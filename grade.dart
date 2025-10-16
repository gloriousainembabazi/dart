// create  a dart program that accepts a student name and stores three subjects and then calculate the average
// marks and must display the grade using the dart knoledge (A,B,C,D,E,F)

class Student{
String? name ;

List<int>? marks;
int? markOne;
int? markTwo;
int? markThree;
// double averageMark(markOne, markTwo, markThree);
double averageMark(){
  double output = (markOne! + markTwo! + markThree!) / 3;
  return output;
}
}

// create the same program without using a list and ensure that the atributes on class are required 
// on the case  
//make use of the same program ensure that the attribute of the class are nulllable with default value 
// to ensure that we dont have any null exception(when you run)
// untilize the same program to have a list to store the marks and the properties must be required,the average mark function must use the basics

//approach utilize a costructor and  ensure that all approaches must have right output

// Approach 1: Without using a list, attributes are required
class StudentRequired {
  final String name;
  final int markOne;
  final int markTwo;
  final int markThree;

  StudentRequired({
    required this.name,
    required this.markOne,
    required this.markTwo,
    required this.markThree,
  });

  double averageMark() {
    return (markOne + markTwo + markThree) / 3;
  }

  String getGrade() {
    double avg = averageMark();
    if (avg >= 70) return 'A';
    if (avg >= 60) return 'B';
    if (avg >= 50) return 'C';
    if (avg >= 40) return 'D';
    if (avg >= 30) return 'E';
    return 'F';
  }
}

// Approach 2: Attributes are nullable with default values
class StudentNullable {
  String? name;
  int markOne;
  int markTwo;
  int markThree;

  StudentNullable({
    this.name,
    this.markOne = 0,
    this.markTwo = 0,
    this.markThree = 0,
  });

  double averageMark() {
    return (markOne + markTwo + markThree) / 3;
  }

  String getGrade() {
    double avg = averageMark();
    if (avg >= 70) return 'A';
    if (avg >= 60) return 'B';
    if (avg >= 50) return 'C';
    if (avg >= 40) return 'D';
    if (avg >= 30) return 'E';
    return 'F';
  }
}

// Approach 3: Using a list, properties are required
class StudentList {
  final String name;
  final List<int> marks;

  StudentList({
    required this.name,
    required this.marks,
  }) : assert(marks.length == 3, 'Must provide exactly 3 marks');

  double averageMark() {
    return marks.reduce((a, b) => a + b) / marks.length;
  }

  String getGrade() {
    double avg = averageMark();
    if (avg >= 70) return 'A';
    if (avg >= 60) return 'B';
    if (avg >= 50) return 'C';
    if (avg >= 40) return 'D';
    if (avg >= 30) return 'E';
    return 'F';
  }
}