class Players {
  final int id;
  final String name;
  final List<int> tables;

  Players({required this.id, required this.name, required this.tables})
    : assert(
        tables.isNotEmpty,
        'Players must be associated with at least one table',
      );
}
