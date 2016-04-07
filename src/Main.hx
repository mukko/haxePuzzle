package ;
import flash.text.TextFormat;
import flash.events.Event;
import flash.Lib;
import flash.text.TextField;
import flash.events.KeyboardEvent;
import flash.ui.Keyboard;

class Main {
	
	private var field:Field = new Field();
	
	private function new() {
		var stage = Lib.current.stage;
		var c = CommonVar;

		//キーボードイベントを登録
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		//stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		
		//Lib.current.stage.addEventListener(Event.ENTER_FRAME, onEnterFrame);
		
		//描画クラス呼び出し
		var view:TetroView = new TetroView();
		
		//背景の描画
		view.drawBackground();
		//ステージの描画
		view.drawStage(this.field.getField());
		
		var t = new Tetromino();
		var x = t.create(c.TETROMINO1);
		var y = t.create(c.TETROMINO2);
		
		this.field.fieldMapping(x, 4, 0);
		view.drawStage(this.field.getField());
		
		this.field.fieldMapping(x, 2, 10);
		view.drawStage(this.field.getField());
		
		this.field.fieldMapping(y, 5, 10);
		view.drawStage(this.field.getField());
//		
//		//ブロックを作成してみて、配列長を表示するテスト
//		var tf = new TextFormat();
//		tf.font = "Times New Roman";
//		tf.size = 12;
//		tf.color = 0x000000;
//		
//		var text = new TextField();
//		text.text = Std.string(x.length);
//		text.setTextFormat(tf);
//		
//		stage.addChild(text);
		
		
	}
    
	//キー入力部分関数
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
