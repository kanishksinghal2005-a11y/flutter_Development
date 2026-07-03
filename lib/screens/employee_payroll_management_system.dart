import 'dart:io';




void main() {
  Payroll employee = Payroll();

  print("Enter Employee ID:");
  employee.employeeId = int.parse(stdin.readLineSync()!);

  print("Enter Employee Name:");
  employee.employeeName = stdin.readLineSync()!;

  print("Enter Department:");
  employee.department = stdin.readLineSync()!;

  print("Enter Basic Salary:");
  employee.basicSalary = double.parse(stdin.readLineSync()!);

  print("Enter HRA:");
  employee.hra = double.parse(stdin.readLineSync()!);

  print("Enter DA:");
  employee.da = double.parse(stdin.readLineSync()!);

  print("Enter Bonus:");
  employee.bonus = double.parse(stdin.readLineSync()!);

  employee.calculateGrossSalary();

  employee.calculateTax();

  employee.calculateNetSalary();

  employee.displaySalarySlip();
}




class Employee {
  int employeeId = 0;
  String employeeName = "";
  String department = "";

  void displayEmployeeInfo() {
    print("\nEmployee Details");
    print("Employee ID: $employeeId");
    print("Employee Name: $employeeName");
    print("Department: $department");
  }
}

class Payroll extends Employee {
  double basicSalary = 0;
  double hra = 0;
  double da = 0;
  double bonus = 0;

  double grossSalary = 0;
  double tax = 0;
  double netSalary = 0;

  

  void calculateGrossSalary() {
    grossSalary = basicSalary + hra + da + bonus;
  }

  void calculateTax() {
    if (grossSalary > 80000) {
      tax = grossSalary * 0.20;
    } else if (grossSalary > 50000) {
      tax = grossSalary * 0.10;
    } else {
      tax = 0;
    }
  }


  void calculateNetSalary() {
    netSalary = grossSalary - tax;
  }

  
  void displaySalarySlip() {
    print("\nSALARY SLIP");

    displayEmployeeInfo();

    print("\nSalary Details");
    print("Basic Salary :$basicSalary");
    print("HRA: $hra");
    print("DA: $da");
    print("Bonus:$bonus");


    print("Gross Salary :$grossSalary");
    print("Tax:$tax");
    print("Net Salary :$netSalary");
  }
}



