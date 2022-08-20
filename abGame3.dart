import 'dart:io';
import 'dart:math';

class Answer{
  
  String? _a1S ;
  String? _a2S ;
  String? _a3S ;

  Answer(){
    var _a1 = Random().nextInt(10);
    var _a2 = Random().nextInt(10);
    while(_a1 == _a2){
      _a2 = Random().nextInt(10);
    }
    var _a3 = Random().nextInt(10);
    while(_a3 == _a2 || _a3 == _a1){
      _a3 = Random().nextInt(10);
    } 
    this._a1S = "$_a1";
    this._a2S = "$_a2";
    this._a3S = "$_a3";

    
    }
  PrintAnswer(){
    print("$_a1S $_a2S $_a3S");
  }
  
  
}

class ABGame3{
  start(){
    print("這是ABGame遊戲，請輸入3個完全不重複整數，共有7次機會");
    Answer answer = new Answer();
    String result = playGame(answer);
    print(result);
  }

  String playGame(answer){ 
    answer.PrintAnswer();
    int maxTimes = 7;
    int chance = 7;
    String result = "";
    for(int i = 0 ; i < maxTimes; i ++){
      String guess = stdin.readLineSync()!;
      while(guess.length!=3 ){
        print("請輸入三個不重複的數字");
        guess = stdin.readLineSync()!;
      } 
      while(guess[0] == guess[1] || guess[0] == guess[2] || guess[1] == guess[2]){
        print("請重新輸入三個不重複的數字");
        guess = stdin.readLineSync()!;
      }
      String g1 = guess[0];
      String g2 = guess[1];
      String g3 = guess[2];
      int a = 0;
      int b = 0;

      if(answer._a1S == g1 && answer._a2S == g2 && answer._a3S == g3){
        print("Yes");
        break;
      }
      if(g1 == answer._a1S){
        a++;
      }
      if(g2 == answer._a2S){
        a++;
      }
      if(g3 == answer._a3S){
        a++;
      }
      if(g1 == answer._a2S || g1 == answer._a3S){
        b++;
      }
      if(g2 == answer._a1S || g2 == answer._a3S){
        b++;
      }
      if(g3 == answer._a2S || g3 == answer._a1S){
        b++;
      }
      chance--;
      print("$a A $b B 剩下$chance次機會");
    
    }
    print("遊戲結束");
    // result = "遊戲結束";
    return result;
  } 
}

void main(){
  ABGame3 abGame3 = ABGame3();
  abGame3.start();
}