#include <functional>
#include <iostream>

template<typename... Args>
void git_call(int (*func)(Args...), Args&&... args) {
	if (func(std::forward<Args>(args)...) < 0)
		std::cout << "Oh no not an error\n";
}

int some_function(int a, int b) {
	std::cout << "Result: " << a + b << '\n';
	return a + b;
}

int main() {
	git_call(some_function, 1, 2);
	git_call(some_function, 1, -7);	
}
