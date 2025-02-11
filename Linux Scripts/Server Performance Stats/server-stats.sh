#! /bin/bash
{
        echo -e "DATE: $(date)\n"
        echo -e "HOSTNAME: $(hostname)\n"
        echo -e "OS: $(grep "PRETTY_NAME" /etc/os-release | cut -d '"' -f2)\n"
        echo -e "UPTIME: $(uptime)\n"
        free | awk '/Mem:/ {printf("MEMORY USAGE: %.2f%%", $4/$2 * 100)}'
        echo ""
        echo ""
        echo -e "TOP 5 BY MEMORY USAGE:"
        top -o "%MEM" | head -12 | tail -6
        echo ""
        top -bn2 | grep '%Cpu' | tail -1 | awk '{print "CPU USAGE: ", 100 - $8 "%"}'
        echo ""
        echo -e "TOP 5 BY CPU USAGE:"
        top -o "%CPU" | head -12 | tail -6
        echo ""
        echo -e "DISK USAGE:"
        df -h | grep '/dev/sda' | awk '{print $1, $3 "/" $4, $5, $6}'
        echo ""
        echo -e "FAILED LOGIN ATTEMPTS:"
        sudo grep "Failed password" /var/log/auth.log >> server-stats.out
} >> server-stats.out