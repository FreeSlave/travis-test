import std.stdio;

void main()
{
	static if (is(typeof({import x11.Xlib;}))) {
		writeln("X11");
		import x11.Xlib;
		auto display = XOpenDisplay(null);
		XCloseDisplay(display);
	} else {
		writeln("Edit source/app.d to start your project.");
	}
}
