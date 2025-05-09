
import 'dart:io';

void main() {
  print("🧮 Welcome to CLI Calculator in Dart!");
  print("Type 'exit' anytime to quit.\n");

  while (true) {
    stdout.write("Enter first number: ");
    String? firstInput = stdin.readLineSync();
    if (firstInput == null || firstInput.toLowerCase() == 'exit') break;

    double? num1 = double.tryParse(firstInput);
    if (num1 == null) {
      print("❌ Invalid number. Try again.");
      continue;
    }

    stdout.write("Enter operator (+, -, *, /): ");
    String? operator = stdin.readLineSync();
    if (operator == null || operator.toLowerCase() == 'exit') break;

    if (!['+', '-', '*', '/'].contains(operator)) {
      print("❌ Invalid operator. Try again.");
      continue;
    }

    stdout.write("Enter second number: ");
    String? secondInput = stdin.readLineSync();
    if (secondInput == null || secondInput.toLowerCase() == 'exit') break;

    double? num2 = double.tryParse(secondInput);
    if (num2 == null) {
      print("❌ Invalid number. Try again.");
      continue;
    }

    double result;
    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          print("⚠️ Cannot divide by zero.");
          continue;
        }
        result = num1 / num2;
        break;
      default:
        print("Unknown error occurred.");
        continue;
    }

    print("✅ Result: $num1 $operator $num2 = $result\n");
  }

  print("👋 Calculator closed. Goodbye!");
}
