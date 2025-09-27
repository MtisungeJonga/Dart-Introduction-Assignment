// Task 1: Define Variables
void defineVariables() {
  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];
  

  print("int: $myInt");
  print("double: $myDouble");
  print("String: $myString");
  print("bool: $myBool");
  print("List<int>: $myList");
  print("");
}

// Task 2: Type Conversion Functions
int stringToInt(String str) => int.parse(str);
double stringToDouble(String str) => double.parse(str);
String intToString(int number) => number.toString();
double intToDouble(int number) => number.toDouble();

// Task 3: Conversion Function
void convertAndDisplay(String number) {
  print("3. Conversion Function:");
  print("Input: '$number'");
  
  try {
    int intValue = stringToInt(number);
    double doubleValue = stringToDouble(number);
    print("As int: $intValue");
    print("As double: $doubleValue");
  } catch (e) {
    print("Error: Invalid number format");
  }
  print("");
}

// Task 4: Control Flow
void controlFlowExamples() {
  print("4. Control Flow Examples:");
  
  // If-Else examples
  void checkNumber(int number) {
    print("Checking number $number:");
    if (number > 0) {
      print("Positive number");
    } else if (number < 0) {
      print("Negative number");
    } else {
      print("Zero");
    }
  }
  
  void checkVotingEligibility(int age) {
    print("Age $age: ");
    if (age >= 18) {
      print("Eligible to vote");
    } else {
      print("Not eligible to vote");
    }
  }
  
  checkNumber(10);
  checkNumber(-5);
  checkNumber(0);
  checkVotingEligibility(20);
  checkVotingEligibility(16);
  
  // Switch Case
  void printDayOfWeek(int dayNumber) {
    print("Day $dayNumber: ");
    switch (dayNumber) {
      case 1: print("Monday"); break;
      case 2: print("Tuesday"); break;
      case 3: print("Wednesday"); break;
      case 4: print("Thursday"); break;
      case 5: print("Friday"); break;
      case 6: print("Saturday"); break;
      case 7: print("Sunday"); break;
      default: print("Invalid day number");
    }
  }
  
  printDayOfWeek(1);
  printDayOfWeek(5);
  printDayOfWeek(8);
  
  // Loops
  print("\nLoops:");
  print("for loop (1-10):");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  
  print("while loop (10-1):");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }
  
  print("do-while loop (1-5):");
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);
  
  print("");
}

// Task 5: Combine Data & Control Flow
void combineDataAndControlFlow() {
  print("5. Combining Data & Control Flow:");
  
  List<int> numbers = [5, 12, 8, 150, 3, 25, 75, 200];
  
  for (int number in numbers) {
    print("\nNumber: $number");
    
    // Check even/odd
    print(number % 2 == 0 ? "Even" : "Odd");
    
    // Categorize by size
    String sizeCategory;
    if (number >= 1 && number <= 10) {
      sizeCategory = "Small (1-10)";
    } else if (number <= 100) {
      sizeCategory = "Medium (11-100)";
    } else {
      sizeCategory = "Large (101+)";
    }
    print("Size Category: $sizeCategory");
  }
}

// Main function should be at the end
void main() {
  print("Dart Assignment: Data Types & Control Flow\n");
  
  // Task 1: Define Variables
  defineVariables();
  
  // Task 2 & 3: Type Conversion
  convertAndDisplay("42");
  convertAndDisplay("3.14");
  
  // Task 4: Control Flow
  controlFlowExamples();
  
  // Task 5: Combine Data & Control Flow
  combineDataAndControlFlow();
  
  // Additional test cases
  print("\n--- Additional Tests ---");
  convertAndDisplay("hello"); // Test error handling
}