import 'dart:convert';

enum tipoMeal {
  cafeDamanha,
  lancheDaManha,
  almoco,
  lancheDaTarde,
  preTreino,
  posTreino,
  jantar,
  ceia
}

class Meals {
  final int idMeal;
  final String tipoRefeicao;
  final String name;
  final double pesoPronto;
  final double pesoCru;
  final String objective;
  Meals({
    required this.idMeal,
    required this.tipoRefeicao,
    required this.name,
    required this.pesoPronto,
    required this.pesoCru,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idMeal': idMeal,
      'tipoRefeicao': tipoRefeicao,
      'name': name,
      'pesoPronto': pesoPronto,
      'pesoCru': pesoCru,
      'objective': objective,
    };
  }

  factory Meals.fromMap(Map<String, dynamic> map) {
    return Meals(
      idMeal: map['idMeal'] as int,
      tipoRefeicao: map['tipoRefeicao'] as String,
      name: map['name'] as String,
      pesoPronto: map['pesoPronto'] as double,
      pesoCru: map['pesoCru'] as double,
      objective: map['objective'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Meals.fromJson(String source) =>
      Meals.fromMap(json.decode(source) as Map<String, dynamic>);
}
