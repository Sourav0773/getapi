class Model {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;

  const Model({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      /*if the api contains data then it will 
      return it else if its null then it will 
      return the deafult value which in my case 
      is 'no data found'. The NULL AWARE OPERATOR is 
      resposible for this for if checks the left side
      conidtion if it returns null then it returns 
      left side value*/ 
      id: json['id'] ?? 'No data found', 
      name: json['name'] ?? 'No data found',
      email: json['email'] ?? 'No data found',
      phone: json['phone'] ?? 'No data found',
    );
  }
  //@override
  //String toString() {
  //  return '(id: $id, name: $name, email: $email, phone: $phone)';
  //}

}
