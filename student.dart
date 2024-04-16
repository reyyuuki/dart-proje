import 'dart:io';

class Student {
  int? RollNo;
  String? name;
  int M1;
  int M2;
  int M3;
  int M4;


  Student(
      this.RollNo, this.name, this.M1, this.M2, this.M3, this.M4);

  void Total_marks(M1, M2, M3 , M4) {
    print("Total marks:${ M1 + M2 + M3 + M4}");
  }

  void average(M1, M2, M3 , M4) {
    print("Average:${ (M1 + M2 + M3 + M4)/4} ");
  }

  void display() {
    print("Roll No:${RollNo}");
    print("Name:${name}");
    print("M1:${M1}");
    print("M2:${M2}");
    print("M3:${M3}");
    print("M4:${M4}");
    Total_marks(M1, M2, M3 , M4);
    average(M1, M2, M3 , M4);

  }
}

void main(){
  print("\n\n");
  print("*************************************************************************************");
  print("\t-------------------------Sangam University-------------------------\n");
 print("\t\t--------------------Mark-Sheet--------------------\n");
  print("Student Roll No:");
  int? RollNo = int.parse(stdin.readLineSync()!);

  print("Student Name:");
  String? name = stdin.readLineSync()!;

  print("Marks of Enterprise Resource Planning:");
  int? M1 = int.parse(stdin.readLineSync()!);

   print("Marks of Object Oriented Programming:");
  int? M2 = int.parse(stdin.readLineSync()!);

   print("Marks of Web of Application:");
  int? M3 = int.parse(stdin.readLineSync()!);

   print("Marks of Technical Report Writing:");
  int? M4 = int.parse(stdin.readLineSync()!);

Student student1 = Student(RollNo,name,M1,M2,M3,M4);

print("\t\t--------------------Mark-Sheet--------------------\n");


student1.display();
}
