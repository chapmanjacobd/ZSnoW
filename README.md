# ZSnoW
This is a basic XSnow clone written in zig for wayland. 
Since I swaped to sway I was missing the xsnow experience, so I created my own one.
I don't care about most features xsnow has, such as snow piling up or the santa and trees,
so they are not planned.


## Disclaimer
Since I'm new to zig and co, the code might contain alot of errors.
For now I can't see any huge memory leaks or issues, but when I find some
I will fix them, feel free to open an issue.


## Support
KDE Plasma's Wayland session is supported, as are Sway and other layer-shell compositors.
Snow appears above the wallpaper and behind application windows, without intercepting mouse or keyboard input.
X11 sessions are not supported.

Your wayland compositor has to support the `zwlr_layer_shell_v1` protocoll.
To check if yours does refer to [here](https://wayland.app/protocols/wlr-layer-shell-unstable-v1#compositor-support)

I am building against these protocoll versions:
| Protocol Name           | Version |
|-------------------------|---------|
| wl_compositor           | 6       |
| wl_shm                 | 2       |
| wl_output              | 4       |
| xdg_wm_base            | 1       |
| zwlr_layer_shell_v1    | 4       |

but I think some lower versions might be also supported try it out yourself and let me know :3

## Customization
You can easily add more/remove flake patterns or adjust scales in `src/flakes/flake.zig`.

## Compiling
To build the project, you need the Zig compiler and a Wayland development environment installed. Here's how to get started:

1. Install Zig: Download Zig from the official website or use your system's package manager if available.
2. Install dependencies:
  - Ensure [wayland-protocols](https://gitlab.freedesktop.org/wayland/wayland-protocols) and the Wayland client development libraries are installed.
  - The zig-wayland and wlr-protocols dependencies will be automatically fetched during the build process.

3. Clone the repository
4. Build the executable using `zig build -Doptimize=ReleaseSafe`
  Replace -Doptimize=ReleaseSafe with -Doptimize=ReleaseFast or -Doptimize=Debug depending on your preferred optimization level.
5. Run `make install` to build in ReleaseSafe mode and install the executable to `~/.local/bin/zsnow`.
6. Let it snow by executing `zsnow`

## Contribution
Contributions are welcome! If you spot issues or have suggestions for improvement, feel free to open an issue or submit a pull request.

## License
 <p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><span property="dct:title">zsnow</span> is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p> 
