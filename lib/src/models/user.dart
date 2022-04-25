import 'dart:convert';

class Users {
  final int idUser;
  final String name;
  final double weigth;
  final double heigth;
  final int age;
  final String objective;
  Users({
    required this.idUser,
    required this.name,
    required this.weigth,
    required this.heigth,
    required this.age,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idUser': idUser,
      'name': name,
      'weigth': weigth,
      'heigth': heigth,
      'age': age,
      'objective': objective,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      idUser: map['idUser'] as int,
      name: map['name'] as String,
      weigth: map['weigth'] as double,
      heigth: map['heigth'] as double,
      age: map['age'] as int,
      objective: map['objective'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) =>
      Users.fromMap(json.decode(source) as Map<String, dynamic>);
}
