class Table {
  final int id;
  final String name;
  final List<String> players;
  final int wins;

  Table({
    required this.id,
    required this.name,
    required this.players,
    this.wins = 0,
  }) : assert(players.length >= 4, 'At least 4 players are required');

  Map<String, Object> toMap() {
    return {'id': id, 'name': name, 'players': players.join(',')};
  }
}
