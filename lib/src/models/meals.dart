// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:mealfit/src/models/itens.dart';

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
  final double duracao;
  final List<Item> itens;

  Meals({
    required this.idMeal,
    required this.tipoRefeicao,
    required this.name,
    required this.duracao,
    required this.itens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idMeal': idMeal,
      'tipoRefeicao': tipoRefeicao,
      'name': name,
      'duracao': duracao,
      'itens': itens.map((x) => x.toMap()).toList(),
    };
  }

  factory Meals.fromMap(Map<String, dynamic> map) {
    return Meals(
      idMeal: map['idMeal'] as int,
      tipoRefeicao: map['tipoRefeicao'] as String,
      name: map['name'] as String,
      duracao: map['duracao'] as double,
      itens: List<Item>.from(
        (map['itens'] as List<int>).map<Item>(
          (x) => Item.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Meals.fromJson(String source) =>
      Meals.fromMap(json.decode(source) as Map<String, dynamic>);
}
