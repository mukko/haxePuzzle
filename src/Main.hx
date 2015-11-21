package ;
import flash.events.Event;
import flash.Lib;
import flash.text.TextField;
import flash.events.KeyboardEvent;
import flash.ui.Keyboard;

class Main {
	
	private function new() {
        //var tf = new TextField();
        //tf.text = "Hello World";
        //Lib.current.addChild(tf);
		
		var stage = Lib.current.stage;

		//キーボードイベントを登録
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		
		//Lib.current.stage.addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
    
	private function onKeyDown(event:KeyboardEvent):Void {
		switch(event.keyCode) {
			case Keyboard.A: 
				trace("A");
			case Keyboard.S:
				trace("S");
			case Keyboard.D:
				trace("D");
			case Keyboard.K:
				trace("K");
			case Keyboard.L:
				trace("L");
			default:
		}
	}
	
	private function onKeyUp(event:KeyboardEvent):Void {
		switch(event.keyCode) {
			case Keyboard.A: 
				trace("A");
			case Keyboard.S:
				trace("S");
			case Keyboard.D:
				trace("D");
			case Keyboard.K:
				trace("K");
			case Keyboard.L:
				trace("L");
			default:
		}
	}
	
	//毎フレーム呼ばれる
	function onEventFrame(e:Event):Void {

	}
	
    public static function main() {
        new Main();
	}
    
}