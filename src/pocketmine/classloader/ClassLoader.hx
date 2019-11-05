package pocketmine.classloader;

@:native("ClassLoader")
extern interface ClassLoader {

    /**
	 * Attaches the ClassLoader to the PHP runtime
	 */
    public function register(prepend:Bool = false):Bool;

}
