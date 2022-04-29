class Item {
  final int id;
  final String name;
  final int weight;
  Item({
    required this.id,
    required this.name,
    required this.weight,
  });

  toMap() {}

  static fromMap(Map<String, dynamic> x) {}
}
