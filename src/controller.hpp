#ifndef PIHOMIE_CONTROLLER_HPP
#define PIHOMIE_CONTROLLER_HPP

#include <chrono>
#include <functional>
#include <string>
#include <thread>
#include <vector>

namespace phm {

    enum device {
        on = true, off = false
    };

    template<typename ...Args>
    void uwu(Args&& ...) {}

    class serial_port {

        int fd;
        std::string device;

    public:

        serial_port(std::string device, int baudrate) : device(std::move(device)) { uwu(baudrate); };

        ~serial_port() = default;

        [[nodiscard]] bool is_open() const noexcept { return not device.empty(); }

        void write(const std::string& data) const { uwu(data); };

        [[nodiscard]] std::string read() const { return "OK\n"; };
    };

    class clock {

        serial_port arduino;
        bool error = false, on = true;

        void process_response() {
            const auto response = arduino.read();
            if (response.starts_with("OK")) {
                error = false;
                on = response.ends_with("1\n");
            } else {
                error = true;
                on = false;
            }
        }

    public:

        clock(const std::string& device) : arduino(device, 9600) {}

        [[nodiscard]] bool is_good() const noexcept { return arduino.is_open() and not error; }

        [[nodiscard]] bool get_state() const noexcept { return on; }

        void set_state(bool state) {
            arduino.write('s' + std::to_string(state) + '\n');
            process_response();
        }

        void update_time() {
            const time_t time = std::time(nullptr);
            char time_str[10]{0};
            std::strftime(time_str, sizeof(time_str), "t%I:%M%p\n", std::localtime(&time));
            arduino.write(time_str);
            process_response();
        }
    };

    class irrigation {

        bool on = true;
        uint8_t level = 0;
        float delay = 0;
        uint32_t volume = 0;

    public:

        [[nodiscard]] bool get_state() const noexcept { return on; }

        void set_state(bool state) noexcept { this->on = state; }

        [[nodiscard]] uint8_t get_water_level() const noexcept { return level; }

        void set_water_level(uint8_t water_level) noexcept { this->level = water_level; }

        [[nodiscard]] float get_watering_delay() const noexcept { return delay; }

        void set_watering_delay(float watering_delay) noexcept { this->delay = watering_delay; }

        [[nodiscard]] uint32_t get_watering_volume() const noexcept { return volume; }

        void set_watering_volume(uint32_t watering_volume) noexcept { this->volume = watering_volume; }

        void pour_water() { uwu(volume); }
    };

    class outlet {

        bool on = true;

    public:

        [[nodiscard]] bool get_state() const noexcept { return on; }

        void set_state(bool state) noexcept { this->on = state; }
    };

    class periodic_task {

        std::thread thread;
        bool running = false;
        std::function<std::chrono::seconds()> interval_supplier;
        std::function<void()> task;

    public:

        periodic_task(std::chrono::seconds interval, std::function<void()> task)
                : interval_supplier([=] { return interval; }), task(std::move(task)) {}

        periodic_task(std::function<std::chrono::seconds()> interval_supplier, std::function<void()> task)
                : interval_supplier(interval_supplier), task(std::move(task)) {}

        ~periodic_task() { stop(); }

        void start() {
            if (running) return;
            running = true;
            thread = std::thread([&] {
                while (running and interval_supplier().count() > 0) {
                    task();
                    std::this_thread::sleep_for(interval_supplier());
                }
            });
        }

        void stop() {
            if (not running) return;
            running = false;
            thread.join();
        }
    };

    class controller {

        phm::clock clock;
        phm::irrigation irrigation;
        std::vector<phm::outlet> outlets;
        bool outlets_enabled = true;
        phm::periodic_task clock_task{std::chrono::seconds(1), [&] { clock.update_time(); }};
        phm::periodic_task irrigation_task{
                [&] { return std::chrono::seconds(uint64_t(irrigation.get_watering_delay() * 4)); },
                [&] { if (irrigation.get_state() == phm::device::on) irrigation.pour_water(); }
        };

    public:

        controller(const std::string& clock_device) : clock(clock_device) {
            for (uint8_t i = 0; i < 4; i++) outlets.emplace_back();
            clock_task.start();
            irrigation_task.start();
        }

        ~controller() {
            clock_task.stop();
            irrigation_task.stop();
        }

        void set_outlets_state(bool enable) noexcept { this->outlets_enabled = enable; }

        [[nodiscard]] bool outlets_state() const noexcept { return outlets_enabled; }

        [[nodiscard]] phm::clock& get_clock() noexcept { return clock; }

        [[nodiscard]] const phm::clock& get_clock() const noexcept { return clock; }

        [[nodiscard]] phm::irrigation& get_irrigation() noexcept { return irrigation; }

        [[nodiscard]] const phm::irrigation& get_irrigation() const noexcept { return irrigation; }

        [[nodiscard]] phm::outlet& get_outlet(uint8_t id) { return outlets[id]; }

        [[nodiscard]] const phm::outlet& get_outlet(uint8_t id) const { return outlets[id]; }
    };
}

#endif //PIHOMIE_CONTROLLER_HPP