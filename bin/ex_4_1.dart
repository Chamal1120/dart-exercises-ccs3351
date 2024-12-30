// Define a person class with properties like name, age and address and create an instance of that and print it's details.

// Create the class
class Person {
  // Define the properties
  String? name;
  int? age;
  String? address;

  Person(this.name, this.age, this.address);
}

void main() {
  //  Create the instance of the class
  Person person = Person("Chamal", 25, "SLTC Research University");
  print('Name: ${person.name}, Age: ${person.age}, Address: ${person.address}');
}
