// Extend the Person class to include a method for calculating the year of birth based on the current year and age

// Define the class
class Person {
  // Define the properties
  String? name;
  int? age;
  String? address;
  int? birthYear;

  // Constructor
  Person(this.name, this.age, this.address) {
    calculateBirthYear();
  }

  // Method to calculate the birth year
  void calculateBirthYear() {
    birthYear = DateTime.now().year - age!;
  }
}

void main() {
  // Instantiate the class
  var person = Person("Chamal", 25, "SLTC");
  // Call the method in the person instance to get the age
  print('Name: ${person.name}, Birth Year: ${person.birthYear}');
}

