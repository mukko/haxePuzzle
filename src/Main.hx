package ;
import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;
import flash.text.TextField;
import flash.events.KeyboardEvent;
import flash.ui.Keyboard;

class Main {
	
	static inline var FIELD_W:Int = 12;
	static inline var FIELD_H:Int = 23;
	static inline var WALL:Int = 99;
	
	static inline var BLOCK_SIZE:Int = 20;	//1片20pxということ
	
	static private var FIELD_FORMAT:Array<Array<Int>> = [
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[WALL, WALL, WALL, 0, 0, 0, 0, 0, 0, WALL, WALL, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, WALL],
	[WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL],
	];
	
	private function new() {
		var stage = Lib.current.stage;

		//キーボードイベントを登録
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		//stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		
		//Lib.current.stage.addEventListener(Event.ENTER_FRAME, onEnterFrame);
		
		drawBackground(FIELD_FORMAT);
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
	
	//ステージ背景を描画する
	function drawBackground(field:Array<Array<Int>>) {
		var canvas:Sprite = new Sprite();
		var graphics = canvas.graphics;
		
		//背景色（白）の描画
		graphics.beginFill(0xFFFFFF);
		graphics.drawRect(0, 0, 500, 500);
		graphics.endFill();
		
		Lib.current.stage.addChild(canvas);
		
		var px;
		var py = 0;
		
		for (i in field) {
			px = 0;
			for (j in i) {
				if (j == WALL) {
					var wall:Sprite = new Sprite();
					wall.graphics.beginFill(0x000000);
					wall.graphics.drawRect(px, py, BLOCK_SIZE, BLOCK_SIZE);
					wall.graphics.endFill();
					Lib.current.stage.addChild(wall);
				}else {
				}
				
				px += BLOCK_SIZE;
			}
			py += BLOCK_SIZE;
		}
	}
	
    public static function main() {
        new Main();
	}
    
}