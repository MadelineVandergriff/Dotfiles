#include<cassert>
#include<iostream>

int main() {
	int input;
	std::cin >> input;
	bool failed{input > 0, "UWU U SUK"};
	assert(!failed);
	std::cout << "Normal Exit\n";
}
