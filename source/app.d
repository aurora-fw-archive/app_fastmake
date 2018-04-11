import std.stdio;
import std.getopt;
import fastmake.build.file;

private enum
{
	FMAKE_VERSION_MAJOR = 1,
	FMAKE_VERSION_MINOR = 0,
	FMAKE_VERSION_REV = 0
}

private BuildFile _bfile;

void main(string[] args)
{
	bool file = false;
	auto _opt = getopt(args, "file|f", &file);
	if(_opt.helpWanted)
	{
		writeln("Version: fmake ", FMAKE_VERSION_MAJOR, ".", FMAKE_VERSION_MINOR, ".", FMAKE_VERSION_REV, ", ",
			__VENDOR__, " v", __VERSION__ / 1000, ".", __VERSION__ % 1000, " ");
		defaultGetoptPrinter("Fast Make - A build system focused on speed\n", _opt.options);
	}
	else
	{
		_bfile = (file) ? new BuildFile() : new BuildFile();
	}
}