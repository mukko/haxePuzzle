package ;

//ビューに関するクラス
import flash.Lib;
import flash.display.Sprite;

class TetroView {
  public function new() {
  }

  //ステージ背景を描画する
  public function drawBackground() {
		var c = CommonVar;
		
    var canvas:Sprite = new Sprite();
    var graphics = canvas.graphics;
    
    //背景色（白）の描画
    graphics.beginFill(c.BG_COLOR);
    graphics.drawRect(0, 0, c.STAGE_W, c.STAGE_H);
    graphics.endFill();
    
    Lib.current.stage.addChild(canvas);
  }
  
  //ステージの描画
  public function drawStage(field: Array<Array<Int>>):Void{
		var c = CommonVar;
		
    var canvas:Sprite = new Sprite();
		var graphics = canvas.graphics;
    
    var px;
		var py = 0;
		
		var block:Sprite = new Sprite();
		
		for (i in field) {
			px = 0;
			for (j in i) {
				if(j != c.BACK) block.graphics.lineStyle(1, 0x000000);
				
				switch j{
					case c.WALL:
					block.graphics.beginFill(c.WALL_COLOR);
					
					case c.TETROMINO1:
					block.graphics.beginFill(c.T1_COLOR);
					
					case c.TETROMINO2:
					block.graphics.beginFill(c.T2_COLOR);
					
					case c.TETROMINO3:
					block.graphics.beginFill(c.T3_COLOR);
					
					case c.TETROMINO4:
					block.graphics.beginFill(c.T4_COLOR);
					
					case c.TETROMINO5:
					block.graphics.beginFill(c.T5_COLOR);
					
					case c.TETROMINO6:
					block.graphics.beginFill(c.T6_COLOR);
					
					case c.TETROMINO7:
					block.graphics.beginFill(c.T7_COLOR);
					//何もない部分(c.BACK)
					case c.BACK:
					block.graphics.beginFill(c.STAGE_COLOR);
					
				}
				
				block.graphics.drawRect(px, py, c.BLOCK_SIZE, c.BLOCK_SIZE);
				block.graphics.endFill();
				
        Lib.current.stage.addChild(block);
				
				px += c.BLOCK_SIZE;
			}
			py += c.BLOCK_SIZE;
		}
  }

}
