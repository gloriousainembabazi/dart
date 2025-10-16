

//  import 'dart:io';

//  void main() {
// print("Hello, Dart!");
// print(age);
// print(name);
// print(marks);
// print(fruits);


// }
// var name ="Glorious";
// int age =24;

// List<String> fruits =["Apple","Mango","orange"];
// Map<String , int> marks ={"python": 70, "math": 60 ,"science":40};

// int multiply(int a, int b){
//     return a*b;
// }
// String Name(String lastname){
//     return "My name is $lastname";
// }

// void MyName(String lastname)
// print("My name is $lastname";)


// practical questions(Dart Basics part1)
//TOPIC ONE(DART SYNTAX & STRUCTURE)
// qn 1. what is the correct way to write a Dart main() function? write a simple program that prints
//your name to the screen.
 
//  void main() {
//  print("my name is Ainembabazi Glorious");
//   print(Name);
//   print(name);
//   print("my name is Ainembabazi Glorious")// missing semicolon and this will cause an error
 

//  }

// qn 2.Dart is a case-sensitive language. explain what this means with an example.
// case-sensitive means Name and name are treated as different indentifiers forexample:

    //  int Name =40;
    //  int name =30;
// qn 3.what happens if you forget to put a semicolon; at the end of the statement in dart?
// dart will trow a compile time error. forexample i will try to print my name with out semicolon.


// TOPIC 2(VARIABLES,CONSTANTS,DATA TYPES)
// qn 4. Declare a variable age with the value 25 and print it.what data type is it?
//  void main(){
    //  int age =25;
    // print(dob);
    // print(pi);
    // print("my name is $name, I am $age years old, and I am $height meters tail.");

// }  

//qn 5.what is the difference between var, final and const in Dart? give
//examples for each

//  var name ="Glorious";//can change later
//  final dob =300; // set once at runtime, cannot change
//  const pi = 3.14;// compile-time constant,fixed value
//  final DateTime now = DateTime.now(); // valid
// const DateTime now = DateTime.now(); // invalid, cannot use non-constant expression

//qn 6. create variables to store the following student details:
// a.Name(string)
//b.Age(integer)
//c.Height(decimal number)

//  String Name ="Glorious";
//  int age = 24;
//  double height = 7.5;

//TOPIC THREE(OPERATORS & EXPRESSION):
//QN 7. write a program that takes two numbers and prints their:
//a.sum
//b.Difference
//c.product
//quotient(division result)

// void main() {
//     int a = 20;
//     int b = 30;
//     print("sum:${a+b}");
//     print("product:${a*b}");
//     print("quotient:${a/b}");


//}

//qn 8.use the modulus operator% to check if a number is divisible by 5
// void main(){
// int num =25;
// if(num % 5==0) {
//     print("$num is divisible by 5");
// }
//  else{
//     print("$num is not divisible by 5");

// }

// }

//qn 9.if x=10, show the difference between x++(post-increment) and ++x(pre-increment)with
// an example program.

// void main() {
//     int x = 10;
//     print(x++); //prints 10,then x becomes 11
//     print(++x); //x becomes 12, then prints 12
// }

//TOPIC 4( HAND ON SIMPLE DART CONSOLE PROGRAMS)
//QN 10. write a Dart program that asks the user for their name and age, 
//then prints"Hello[name], you are [age] years old!"

//  void main(){
//      stdout.write("Enter your name: ");
//      String name = stdin.readLineSync() ?? "Guest";
//      stdout.write("Enter your age: ");
//         String age = stdin.readLineSync() ?? "unknown";
//         print("Hello $name, you are $age years old!");
//  }

//QN 11. write a program to calculate the area of a rectangle.
//The program should ask the user to length and width.


// //QN 12. create a small program where the user enters numbers and the program prints
// //which one is bigger.
// void main(){
//     stdout.write("Enter first number: ");
//     int num1 = int.parse(stdin.readLineSync()!);
//     stdout.write("Enter second number: ");
//     int num2 = int.parse(stdin.readLineSync()!);

//     if(num1 > num2){
//         print("$num1 is bigger than $num2");
//     }
//     else if(num2 > num1){
//         print("$num2 is bigger than $num1");
//     }
//     else{
//         print("Both numbers are equal.");
//     }
// }

//Qn 13.write a program that coverts temperature from celsius to fahrenheit
//formula:F=(c*9/5)+32

// void main(){
//     stdout.write("Enter temperature in Celsius: ");
//     double celsius = double.parse(stdin.readLineSync()!);
//     double fahrenheit = (celsius * 9/5) + 32;
//     print("Temperature in Fahrenheit: $fahrenheit");
// }
//Qn 14.write a program that takes a number as input and checks if it is even or odd.


//  Discuss what is meant by Dart’s null safety features and explain the benefits of 
// using null safety in Flutter development.



// void main() {
//   int? nullableNumber; // This variable can hold a null value
//   int nonNullableNumber = 10; // This variable cannot hold a null value

  // nullableNumber = null; // This is allowed
  // nonNullableNumber = null; // This will cause a compile-time error

//   print("Nullable Number: $nullableNumber");
//   print("Non-Nullable Number: $nonNullableNumber");
//   print(nonNullableColour);
  
// }

// String? colour ="red"; // can be null
// // String colour ="red"; // cannot be null
// String nonNullableColour ="blue"; // cannot be null
// String? nonNullableColour ="blue"; // can be null

// create  a dart program that accepts a student name and stores three subjects and then calculate the average
// marks and must display the grade using the dart knoledge (A,B,C,D,E,F)

// import 'dart:io';

// class Student {
//   String name = "";
//   Map<String, int> subjects = {};

//   void inputDetails() {
//     stdout.write("Enter student name: ");
//     name = stdin.readLineSync() ?? "";

//     for (int i = 1; i <= 3; i++) {
//       stdout.write("Enter subject $i name: ");
//       String subject = stdin.readLineSync() ?? "";
//       stdout.write("Enter marks for $subject: ");
//       int marks = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
//       subjects[subject] = marks;
//     }
//   }

//   double calculateAverage() {
//     if (subjects.isEmpty) return 0;
//     int total = subjects.values.reduce((a, b) => a + b);
//     return total / subjects.length;
//   }

//   String getGrade(double average) {
//     if (average >= 80) return "A";
//     if (average >= 70) return "B";
//     if (average >= 60) return "C";
//     if (average >= 50) return "D";
//     if (average >= 40) return "E";
//     return "F";
//   }

//   void displayResult() {
//     double avg = calculateAverage();
//     String grade = getGrade(avg);
//     print("Student: $name");
//     print("Subjects & Marks: $subjects");
//     print("Average: ${avg.toStringAsFixed(2)}");
//     print("Grade: $grade");
//   }

//   Student() {
//     inputDetails();
//     displayResult();
//   }
// }
// // }
// // void main() {
// //   Student student = Student();
// //   student.inputDetails();
// //   student.displayResult();

// }


