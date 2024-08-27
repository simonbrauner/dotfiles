#include <unistd.h>

int main()
{
	execlp("ydotool", "ydotool", "key", "H", NULL);
}
