class Table {
  final String name;

  Table({required this.name});

  Map<String, dynamic> toMap() {
    return {'name': name};
  }

  factory Table.fromMap(Map<String, dynamic> map) {
    return Table(name: map['name'] as String);
  }
}
