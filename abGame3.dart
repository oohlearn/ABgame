import 'dart:io';
import 'dart:math';

class ABGame3{
  
  start(){
    print("這是ABGame遊戲，請輸入3個完全不重複整數，共有7次機會");
    String result = playGame();
    print(result);
  }
  String playGame(){
    var _answer = Random().nextInt(1000);
    String _answerS = "$_answer";
    while(_answerS[0] == _answerS[1] || _answerS[0] == _answerS[2] || _answerS[1] == _answerS[2]){
      // print(_answerS);
      while(_answerS.length != 3){
        _answer = Random().nextInt(1000);
        _answerS = "$_answer";
        // print(_answerS);
      }
    }
    
    String a1 = _answerS[0];
    String a2 = _answerS[1];
    String a3 = _answerS[2];
    print(_answerS);
    
    
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

      if(a1 == g1 && a2 == g2 && a3 == g3){
        print("Yes");
        break;
      }
      if(g1 == a1){
        a++;
      }
      if(g2 == a2){
        a++;
      }
      if(g3 == a3){
        a++;
      }
      if(g1 == a2 || g1 == a3){
        b++;
      }
      if(g2 == a1 || g2 == a3){
        b++;
      }
      if(g3 == a2 || g3 == a1){
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