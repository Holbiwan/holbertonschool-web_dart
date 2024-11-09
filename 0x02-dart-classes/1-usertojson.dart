class User {
  String name;
  int age;
  double height;

  User({required this.name, required this.age, required this.height});

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
        'height': height,
      };

  @override
  String toString() {
    return 'User(name: $name, age: $age, height: $height)';
  }
}
