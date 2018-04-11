module fastmake.build.file;

import std.stdio;
//import std.process;

import std.file;
import std.json;

class BuildFile {
	this(string path = "fmake.json")
	{
		assert(exists(path), "No build file founded!");
		_jbuf = parseJSON(cast(string)read(path));
		if(const(JSONValue)* i = "env" in _jbuf)
			if(i.type() == JSON_TYPE.OBJECT)
				writeln(i.toString());
				//environment[i.]
	}

	private JSONValue _jbuf;
}