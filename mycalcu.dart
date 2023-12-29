import 'dart:io';

void main() {
  // Display the menu and get user input until they choose to exit
  while (true) {
    print("\nMenu:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Modulus");
    print("6. Equality Check");
    print("7. Exit");

    // Get user choice
    stdout.write("Enter your choice (1-7): ");
    String choice = stdin.readLineSync() ?? "";
    
    // Perform the corresponding operation or exit
    switch (choice) {
      case "1":
        performAddition();
        break;
      case "2":
        performSubtraction();
        break;
      case "3":
        performMultiplication();
        break;
      case "4":
        performDivision();
        break;
      case "5":
        performModulus();
        break;
      case "6":
        performEqualityCheck();
        break;
      case "7":
        exit(0); // Exit the program
        break;
      default:
        print("Invalid choice. Please enter a number between 1 and 7.");
    }
  }
}

void performAddition() {
  double num1 = getOperand("Enter the first number: ");
  double num2 = getOperand("Enter the second number: ");
  double result = num1 + num2;
  print("Result: $result");
}

void performSubtraction() {
  double num1 = getOperand("Enter the first number: ");
  double num2 = getOperand("Enter the second number: ");
  double result = num1 - num2;
  print("Result: $result");
}

void performMultiplication() {
  double num1 = getOperand("Enter the first number: ");
  double num2 = getOperand("Enter the second number: ");
  double result = num1 * num2;
  print("Result: $result");
}

void performDivision() {
  double num1 = getOperand("Enter the dividend: ");
  double num2 = getOperand("Enter the divisor: ");
  if (num2 != 0) {
    double result = num1 / num2;
    print("Result: $result");
  } else {
    print("Error: Cannot divide by zero.");
  }
}

void performModulus() {
  int num1 = getOperand("Enter the first number: ").toInt();
  int num2 = getOperand("Enter the second number: ").toInt();
  int result = num1 % num2;
  print("Result: $result");
}

void performEqualityCheck() {
  double num1 = getOperand("Enter the first number: ");
  double num2 = getOperand("Enter the second number: ");
  if (num1 == num2) {
    print("The numbers are equal.");
  } else {
    print("The numbers are not equal.");
  }
}

double getOperand(String prompt) {
  stdout.write(prompt);
  String input = stdin.readLineSync() ?? "0";
  return double.parse(input);
}
