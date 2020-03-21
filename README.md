# Kodi systemd service

A systemd service file and environment correctness check for running the [Kodi media center](https://kodi.tv) at system start.

```sh
$ systemctl enable kodi
$ systemctl start kodi
```

## Raspberry Pi 4

On a Raspberry Pi 4 (and possibly earlier models), the default amount of RAM given to the GPU is too low, and must be at least 256M.
The systemd service checks that this is the case before starting.

To give your Raspberry Pi enough GPU memory, add the line `gpu_mem=256` to `/boot/config.txt`.

For more information, please read the [Raspberry Pi documentation](https://www.raspberrypi.org/documentation/configuration/config-txt/memory.md).
