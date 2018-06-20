#include <time.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    time_t now;
    struct tm *now_tm;
    int hour;

    now = time(NULL);
    now_tm = localtime(&now);
    hour = now_tm->tm_hour;

    // How times of day are defined:
    // Night, time_code 'n': 8PM-5AM, hours 20-5, <inclusive, exclusive>
    // Morning, time_code 'm': 5AM-12PM, hours 5-12, <inclusive, exclusive>
    // Afternoon, time_code 'a': 12PM-8PM, hour 12-19 <inclusive, exclusive>

    char time_code = '\0';
    if (hour >= 20 || hour < 5) time_code = 'n';
    else if (hour >= 5 && hour < 12) time_code = 'm';
    else if (hour >= 12 && hour < 19) time_code = 'a';

    printf("Hour: %d, Time Code: %c\n", hour, time_code);

    if (time_code == 'n') system("wal -i ~/Wallpapers/night");
    else if (time_code == 'm') system("wal -i ~/Wallpapers/morning");
    else if (time_code == 'a') system("wal -i ~/Wallpapers/afternoon");

    system("killall dunst; dunst &");

    return 0;
}
