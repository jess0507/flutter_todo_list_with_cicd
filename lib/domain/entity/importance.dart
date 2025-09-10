enum Importance {
  none,
  low,
  medium,
  high
}

extension StringAndImportanceExtension on String {
  Importance get fromString => Importance.values.firstWhere(
      (e) => e.name == this,
      orElse: () => Importance.none,
    );
}