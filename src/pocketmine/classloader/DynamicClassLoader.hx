package pocketmine.classloader;

@:native("DynamicClassLoader")
extern interface DynamicClassLoader extends ClassLoader{

    /**
	 * Adds a path to the lookup list
	 */
    function addPath(path:String, prepend:Bool = false):Void;

}
