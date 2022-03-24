#include <string>
#include <unordered_map>

using namespace std;

int main() {
	unordered_map<string, int> lookup;
	lookup.emplace("yo", 5);
	printf("%d, ", lookup.size());
	printf("%d", lookup.at("yo"));
	return 0;
}
