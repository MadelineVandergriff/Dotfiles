#include<type_traits>
#include<iostream>

struct Vector2 {
	int x;
	int y;
};

struct AABB {
	    Vector2 min;
	        Vector2 max;

		    bool intersects(const AABB &other) const {
			            return max.x > other.min.x &&
					                min.x < other.max.x &&
							            max.y > other.min.y &&
								                min.y > other.max.y;
				        }
};

int main() {
	std::cout << std::is_trivial_v<AABB> && std::is_standard_layout_v<AABB> << '\n';
	return 0;
}
