#include <unistd.h>

int main()
{
	execlp("ydotool", "ydotool", "key", "G", NULL);
}
