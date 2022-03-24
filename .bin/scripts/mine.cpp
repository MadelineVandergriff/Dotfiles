#include <cstdio>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>

const char* MINE_CMD = "ethminer -U -P stratum2+tcp://32NKX2HEgUDktPehsSqHMptyH7qkCV9P6L.Archer@daggerhashimoto.usa.nicehash.com:3353 2>&1";

void mine() {
    std::array<char, 128> buffer;
    std::string result;
    std::unique_ptr<FILE, decltype(&pclose)> pipe(popen(MINE_CMD, "r"), pclose);
    if (!pipe) {
        throw std::runtime_error("popen() failed!");
    }
    
    while (fgets(buffer.data(), buffer.size(), pipe.get()) != nullptr) {
        result = buffer.data();
        std::cout << buffer.data();
        if (result.find("SIGSEGV") != std::string::npos) {
            std::cout << std::endl << "[!!!] SIGSEGV RECEIVED\n";
            return;
        }

        if (result.find("incorrect result") != std::string::npos) {
            std::cout << std::endl << "[!!!] GPU DEGRADATION\n";
            return;
	}
    }
}

int main() {
    while (true) {
        mine();
    }
}
