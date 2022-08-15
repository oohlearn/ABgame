import 'dart:io';

String playGame(String guess, String answer){
  while(guess[0] == guess[1] || guess[0] == guess[2] || guess[1] == guess[2]){
    print("請重新輸入三個不重複的數字");
    guess = stdin.readLineSync()!;
  }
  
  String g1 = guess[0];
  String g2 = guess[1];
  String g3 = guess[2];
  String a1 = answer[0];
  String a2 = answer[1];
  String a3 = answer[2];

  int a = 0;
  int b = 0;

  if(a1 == g1 && a2 == g2 && a3 == g3){
    return "Yes";
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
  return "$a A $b B";
  
}
// String get unit
void main(){
  String guess = stdin.readLineSync()!;
  String answer = stdin.readLineSync()!;

  String result = playGame(guess, answer);
  print(result);
 
  








  
}