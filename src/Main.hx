package ;
import flash.events.Event;
import flash.Lib;
import flash.text.TextField;
import flash.events.KeyboardEvent;

class Main {
	
	private static var KEY_A:UInt = 65;
	private static var KEY_S:UInt = 83;
	private static var KEY_D:UInt = 68;
	private static var KEY_K:UInt = 75;
	private static var KEY_L:UInt = 76;
	
	private function new() {
        //var tf = new TextField();
        //tf.text = "Hello World";
        //Lib.current.addChild(tf);
		
		var stage = Lib.current.stage;

		//キーボードイベントを登録
		stage.addEventListener(KeyboardEvent.KEY_DOWN, function(e:KeyboardEvent):Void {
			trace(e.keyCode);
		});
		
		//Lib.current.stage.addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
    
	
	//毎フレーム呼ばれる
	function onEventFrame(e:Event):Void {

	}
	
    public static function main() {
        new Main();
	}
    
}