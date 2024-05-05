#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <string.h> 
// #include <asm/termbits.h>

int main(int argc, char *argv[])
{
    const char *portname ;
    if ( argc < 2 ) portname = "/dev/ttyUSB0"; // Change this to your USB serial port
    else portname = argv[1];
    int fd = open(portname, O_RDWR | O_NOCTTY | O_NONBLOCK);
    if (fd == -1)
    {
        fprintf(stderr, "error %d opening %s: %s\n", errno, portname, strerror(errno));
        return 1;
    }

    struct termios tty;
    if (tcgetattr(fd, &tty) != 0)
    {
        fprintf(stderr, "error %d from tcgetattr: %s\n", errno, strerror(errno));
        close(fd);
        return 1;
    }

    tty.c_cflag |= (CLOCAL | CREAD);
    tty.c_cflag &= ~CSIZE;
    tty.c_cflag |= CS8;      // 8-bit characters
    tty.c_cflag &= ~PARENB;  // No parity bit
    tty.c_cflag &= ~CSTOPB;  // 1 stop bit
    tty.c_cflag &= ~CRTSCTS; // Disable hardware flow control

    // Clear DTR and RTS signals
    tty.c_cflag &= ~TIOCM_DTR;
    tty.c_cflag &= ~TIOCM_RTS;
        // Set DTR and RTS signals
    tty.c_cflag |= TIOCM_DTR;
    tty.c_cflag |= TIOCM_RTS;


    if (tcsetattr(fd, TCSANOW, &tty) != 0)
    {
        fprintf(stderr, "error %d from tcsetattr: %s\n", errno, strerror(errno));
        close(fd);
        return 1;
    }

    close(fd);
    return 0;
}