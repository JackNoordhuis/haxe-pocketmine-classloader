package pocketmine.classloader;

import php.pthreads.Threaded;
import php.TypedArray;

@:native("BaseClassLoader")
extern class BaseClassLoader extends Threaded implements DynamicClassLoader{

    private var lookup:TypedArray<Int, String>;

    function new():Void;

    /**
	 * Adds a path to the lookup list
	 */
    function addPath(path:String, prepend:Bool = false):Void;

    private function getAndRemoveLookupEntries():TypedArray<Int, String>;

    /**
	 * Attaches the ClassLoader to the PHP runtime
	 */
    function register(prepend:Bool = false):Void;

    /**
	 * Called when there is a class to load
	 */
    function loadClass(name:String):Bool;

    /**
	 * Returns the path for the class, if any
	 */
    function findClass(name:String):Null<String>;

}
