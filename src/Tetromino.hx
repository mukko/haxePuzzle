package ;

//テトリミノを生成し、配列を返すクラス
//描画は別の場所で行う
  
class Tetromino {
  public function new() {
      
  }

  //ひとまず指定されたコードのテトロミノを返す
  public function create(number:Int): Array<Array<Int>>{
    var array:Array<Array<Int>> = [[]];
    var c = CommonVar;
    
    switch(number){
      //棒
      case c.TETROMINO1:
        array = [[0,0,0,0],
                 [1,1,1,1],
                 [0,0,0,0],
                 [0,0,0,0]];
      //四角
      case c.TETROMINO2:
        array = [[2,2],
                 [2,2]];
      //s字
      case c.TETROMINO3:
        array = [[0,3,3],
                 [3,3,0],
                 [0,0,0]];
      //z字
      case c.TETROMINO4:
        array = [[4,4,0],
                 [0,4,4],
                 [0,0,0]];
      //J字
      case c.TETROMINO5:
        array = [[5,0,0],
                 [5,5,5],
                 [0,0,0]];
      //L字
      case c.TETROMINO6:  
        array = [[0,0,6],
                 [6,6,6],
                 [0,0,0]];
      //T字
      case c.TETROMINO7:  
        array = [[0,7,0],
                 [7,7,7],
                 [0,0,0]];
    }
    
    return array;
  }

  //指定されたコードのテトロミノの色を返す
  public function colorInit(number:Int): UInt{
    var c = CommonVar;
    var color = c.BG_COLOR;
    
    switch number{
            case c.TETROMINO1: color = c.T1_COLOR;
            case c.TETROMINO2: color = c.T2_COLOR;
            case c.TETROMINO3: color = c.T3_COLOR;
            case c.TETROMINO4: color = c.T4_COLOR;
            case c.TETROMINO5: color = c.T5_COLOR;
            case c.TETROMINO6: color = c.T6_COLOR;
            case c.TETROMINO7: color = c.T7_COLOR;
    }

    return color;
  }

}
