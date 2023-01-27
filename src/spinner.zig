// Copyright (c) 2023 XXIV
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
pub const Raw = @import("raw.zig");

pub const Spinners = Raw.spinner_spinners_t;

pub const Spinner = struct {
    _spinner: Raw.spinner_t,

    pub fn new(spinner: Spinners, message: []const u8) Spinner {
        const spin = Raw.spinner_new(spinner, message.ptr);
        return .{
            ._spinner = spin
        };
    }

    pub fn newWithTimer(spinner: Spinners, message: []const u8) Spinner {
        const spin = Raw.spinner_new_with_timer(spinner, message.ptr);
        return .{
            ._spinner = spin
        };
    }

    pub fn stop(spinner: *Spinner) void {
        Raw.spinner_stop(&spinner._spinner);
    }

    pub fn stopWithSymbol(spinner: *Spinner, symbol: []const u8) void {
        Raw.spinner_stop_with_symbol(&spinner._spinner, symbol.ptr);
    }

    pub fn stopWithNewline(spinner: *Spinner) void {
        Raw.spinner_stop_with_newline(&spinner._spinner);
    }

    pub fn stopWithMessage(spinner: *Spinner, msg: []const u8) void {
        Raw.spinner_stop_with_message(&spinner._spinner, msg.ptr);
    }

    pub fn stopAndPersist(spinner: *Spinner, symbol: []const u8, msg: []const u8) void {
        Raw.spinner_stop_and_persist(&spinner._spinner, symbol.ptr, msg.ptr);
    }

    pub fn clean(spinner: *Spinner) void {
        Raw.spinner_clean(&spinner._spinner);
    }
};
