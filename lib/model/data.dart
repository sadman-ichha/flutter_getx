class MyData {
  String name;
  String age;

  MyData({required this.name, required this.age});

  Map<String, dynamic> toJson() => {
        'names': name,
        'ages': age,
      };
}
