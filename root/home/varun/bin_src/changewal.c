#include <time.h>

int main(int argc, char *argv[])
{
    time_t now;
    struct tm *now_tm;
    int hour;

    now = time(NULL);
    now_tm = localtime(&now);
    hour = now_tm->tm_hour;

    printf("Hour: %d\n", hour);

    return 0;
}
