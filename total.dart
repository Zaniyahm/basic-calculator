import 'dart:io';
void main(){
    print("enter first number:");
    int number1 = int.parse(stdin.readLineSync().toString());
    print("enter second number:");
    int number2 = int.parse(stdin.readLineSync().toString());
    int sum = number1 + number2;
    print("The sum of ${number1} and ${number2} is ${sum}");
}
