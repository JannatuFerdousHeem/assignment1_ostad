// A. Define an interface named Role:
abstract class Role {
  void displayRole();
}

// B. Create a class Person:
class Person implements Role {
  late String name;
  late int age;
  late String address;
  late Role role;

  Person(this.name, this.age, this.address, this.role);

  // Getter methods for attributes
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  // Implement the Role interface methods
  @override
  void displayRole() {
    print('Role: ${role.runtimeType}');
  }
}

// C. Create a class Student that extends Person:
class Student extends Person {
  late int studentID;
  late int grade;
  late List<double> courseScores;

  Student(String name, int age, String address, Role role, this.studentID, this.grade, this.courseScores)
      : super(name, age, address, role);

  // Override the displayRole() method
  @override
  void displayRole() {
    super.displayRole();
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Average Score: ${calculateAverageScore()}');
  }

  // Implement a method to calculate the average score of courses
  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}

// D. Create another class Teacher that extends Person:
class Teacher extends Person {
  late int teacherID;
  late List<String> coursesTaught;

  Teacher(String name, int age, String address, Role role, this.teacherID, this.coursesTaught)
      : super(name, age, address, role);

  // Override the displayRole() method
  @override
  void displayRole() {
    super.displayRole();
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

// E. Create a class StudentManagementSystem:
class StudentManagementSystem {
  static void main() {
    // Create instances of Student and Teacher classes
    var student = Student('John Doe', 20, '123 Main St', Role(), 123, 10, [90, 85, 82]);
    var teacher = Teacher('Mrs. Smith', 35, '456 Oak St', Role(), 456, ['Math', 'English', 'Bangla']);

    // Set the attributes using appropriate methods
    student.role = student;
    teacher.role = teacher;

    // Use the displayRole() method to display the role of each person
    student.displayRole();
    print('\n');
    teacher.displayRole();
  }
}

void main() {
  // Run the StudentManagementSystem
  StudentManagementSystem.main();
}
