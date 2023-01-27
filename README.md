# libspinners-zig

[![](https://img.shields.io/github/v/tag/thechampagne/libspinners-zig?label=version)](https://github.com/thechampagne/libspinners-zig/releases/latest) [![](https://img.shields.io/github/license/thechampagne/libspinners-zig)](https://github.com/thechampagne/libspinners-zig/blob/main/LICENSE)

Zig binding for libspinners an elegant terminal spinners.

### Example

```zig
const std = @import("std");
const lib = @import("spinner");
const Spinner = lib.Spinner;
const Spinners = lib.Spinners;

pub fn main() void {
    var spin = Spinner.new(Spinners.Dots9, "Waiting for 3 seconds");
    defer spin.clean();
    std.time.sleep(3e+9);
    spin.stop();
}
```

### References
 - [libspinners](https://github.com/thechampagne/libspinners)

### License

This repo is released under the [MIT](https://github.com/thechampagne/libspinners-zig/blob/main/LICENSE).
