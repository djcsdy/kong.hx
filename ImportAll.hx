import sys.FileSystem;
import haxe.macro.Context;

/** Macro to import all modules, in order to generate documentation for them. */
class ImportAll {
    static var whitelist = ["kong"];

    public static function run() {
        for (path in Context.getClassPath()) {
            if (path == "") {
                path = ".";
            }

            importDirectory(path);
        }
    }

    static function importDirectory(path:String, packageName:String="") {
        path = ~/\/*$/.replace(path, "");

        for (fileName in FileSystem.readDirectory(path)) {
            if (StringTools.startsWith(fileName, ".")) {
                continue;
            }

            var filePath = path + "/" + fileName;
            if (FileSystem.isDirectory(filePath)) {
                var filePackageName = if (packageName == "") fileName else packageName + "." + fileName;
                importDirectory(path + "/" + fileName, filePackageName);
            } else if (StringTools.endsWith(fileName, ".hx")) {
                var moduleName = fileName.substr(0, fileName.length - 3);
                if (packageName != "") {
                    moduleName = packageName + "." + moduleName;
                }

                for (whitelistItem in whitelist) {
                    if (StringTools.startsWith(moduleName, whitelistItem + ".")) {
                        Context.getModule(moduleName);
                        break;
                    }
                }
            }
        }
    }
}