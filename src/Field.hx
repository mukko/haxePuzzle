package ;

//フィールドに関する操作をするクラス
class Field {
  
  private var field:Array<Array<Int>>;

  //フィールド情報の作成
  public function new(){
    setField(CommonVar.FIELD_FORMAT);
  }

  public function getField():Array<Array<Int>>{
    return this.field;
  }

  public function setField(data:Array<Array<Int>>):Void{
    this.field = data;
  }
  
  /**
  * フィールド情報の更新
  * data: 現在動かしているテトロミノ
  * x,y: テトロミノの位置
  **/
	public function fieldMapping(data:Array<Array<Int>>, x:Int, y:Int):Array<Array<Int>>{
		//フィールドやテトロミノのサイズに関する情報を保持
    var size:Int = data.length;
    var tx, ty, dx, dy;
    
    //衝突がなかったら更新する
    if(isCollision(data, x, y)){
      
    for(i in 0...size){
      for(j in 0...size){
        tx = x+j;
        ty = y+i;
        
          this.field[ty][tx] = data[i][j];
      }
    }
    }
    return this.field;
	}
	
	/**
  * 衝突判定
  * data: 現在動かしているテトロミノ
  * x, y: 座標
  * return 正しく動くときtrue, それ以外はfalse
  **/
  public function isCollision(data:Array<Array<Int>>, x:Int, y:Int):Bool{
    var size:Int = data.length;
    var tx, ty, dx, dy;
    
    for(i in 0...size){
      for(j in 0...size){
        tx = x+j;
        ty = y+i;
        
        if(data[i][j] != 0 && this.field[ty][tx] != 0){
          return false;
        }
      }
    }
    
    return true;
  }

}
