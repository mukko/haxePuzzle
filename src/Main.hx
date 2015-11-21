package ;
import flash.Lib;
import flash.text.TextField;

class Main {
	
	private function new() {
        var tf = new TextField();
        tf.text = "Hello World";
        Lib.current.addChild(tf);
    }
    public static function main() {
        new Main();
    }
    
}