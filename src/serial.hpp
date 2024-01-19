#include <string>

namespace phm {

    class serial_port {

        int fd;
        std::string device;

    public:

        serial_port(std::string device, int) : device(std::move(device)) {};

        ~serial_port() = default;

        [[nodiscard]] bool is_open() const { return not device.empty(); }

        void close() const {};

        void write(const std::string&) const {};

        [[nodiscard]] std::string read() const { return "OK1\n"; };
    };
}
