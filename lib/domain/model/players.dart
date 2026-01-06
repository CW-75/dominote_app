class Player {
  final String name;

  Player({required this.name});

  Map<String, dynamic> toMap() {
    return {'name': name};
  }
}
