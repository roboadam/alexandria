const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello World.\n", .{});

    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    try bw.flush();
}

test "sample" {
    const one = 1;
    try std.testing.expectEqual(one, 1);
}
