package;

class Main {
	public static function main():Void {
		// Specifying args, or not specifying args, go to different code paths, so
		// just demonstrating that the behavior is the same for both code paths.
		if (Sys.systemName() == "Windows") {
			Sys.command("some_script_name.bat", [""]);
			Sys.command("some_script_name.bat");
			Sys.command("some,script,name.bat", [""]);
			Sys.command("some,script,name.bat");
		} else {
			Sys.command("some_script_name.sh", [""]);
			Sys.command("some_script_name.sh");
			Sys.command("some,script,name.sh", [""]);
			Sys.command("some,script,name.sh");
		}
	}
}
