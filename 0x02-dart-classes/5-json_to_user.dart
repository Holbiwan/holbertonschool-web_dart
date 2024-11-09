class User {
  int id;
  String name;
  int age;
  double height;

  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.height});

  Map toJson() => {'id': id, 'name': name, 'age': age, 'height': height};

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  String toString() =>
      "User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})";
}
