package ;

//定数クラス

class CommonVar {
	static public inline var STAGE_W:Int = 500;
	static public inline var STAGE_H:Int = 500;
	
  static public inline var FIELD_W:Int = 12;
	static public inline var FIELD_H:Int = 23;
	static public inline var WALL:Int = 99;
	
	static public inline var BLOCK_SIZE:Int = 20;	//1片20pxということ
  //フィールドを定数として定義した。これにブロック情報などを追加することになる
  static public var FIELD_FORMAT:Array<Array<Int>> = [
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
	[WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL, WALL]
	];
  
  //tetromino code
	static public inline var BACK:Int = 0;
  static public inline var TETROMINO1:Int = 1;  //棒
  static public inline var TETROMINO2:Int = 2;  //四角
  static public inline var TETROMINO3:Int = 3;  //S字
  static public inline var TETROMINO4:Int = 4;  //Z字
  static public inline var TETROMINO5:Int = 5;  //J字
  static public inline var TETROMINO6:Int = 6;  //L字
  static public inline var TETROMINO7:Int = 7;  //T字

  //color code
  static public inline var T1_COLOR:UInt = 0x4DE6E1;
  static public inline var T2_COLOR:UInt = 0xE9EE11;
  static public inline var T3_COLOR:UInt = 0x46DF20;
  static public inline var T4_COLOR:UInt = 0xED2212;
  static public inline var T5_COLOR:UInt = 0x2746D8;
  static public inline var T6_COLOR:UInt = 0xE49E1B;
  static public inline var T7_COLOR:UInt = 0xEA68E7;
	
	static public inline var BG_COLOR:UInt = 0xffffff;
	static public inline var STAGE_COLOR:UInt = 0x000000;
	static public inline var WALL_COLOR:UInt = 0x999999;
  
  public function new(){
    
  }
}
