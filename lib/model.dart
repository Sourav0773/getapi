class Model {
  final String id;
  final String name;
  final String email;
  final String phone;

  const Model({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}
