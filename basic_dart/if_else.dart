import 'dart:io';
void main() {
  print("Enter a positive integer:");
  var input = int.parse(stdin.readLineSync()!);

  if (input >= 0) {
    var factorial = calculateFactorial(input);
    print("Factorial of $input is $factorial");
  } else {
    print("Please enter a non-negative integer.");
  }
}

int calculateFactorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}
