int getUnit(int number){
  double num = number / 10;
  int num_int = num.toInt();
  int unit = number - num_int * 10;
  return unit;
}

void main(){
  int question = 869;

  int q1 = getUnit(question);

  double q1_double = question / 10;
  int q2_int = q1_double.toInt();
  int q2 = getUnit(q2_int);

  double q3_double = q1_double / 10;
  int q3_int = q3_double.toInt();
  int q3 = getUnit(q3_int);



  int answer = 986;
  int a1 = getUnit(answer);

  double a1_double = answer / 10;
  int a2_int = a1_double.toInt();
  int a2 = getUnit(a2_int);

  double a3_double = a1_double / 10;
  int a3_int = a3_double.toInt();
  int a3 = getUnit(a3_int);



  int a = 0;
  int b = 0;

  if(a1 == q1){
    a++;
  }
  else if(a1 == q2 || a1 == q3){
    b++;
  }

  if(a2 == q2){
    a++;
  }
  else if(a2 == q1 || a2 == q3){
    b++;
  }

  if(a3 == q3){
    a++;
  }
  else if(a3 == q1 || a3 == q2){
    b++;
  }



  print('$a $b');





 


}