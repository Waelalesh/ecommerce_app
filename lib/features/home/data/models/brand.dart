class Brand {
  final String id;
  final String name;
  final String logoPath;
  bool isSelected;

  Brand({
    required this.id,
    required this.name,
    required this.logoPath,
    this.isSelected = false,
  });

  Brand copyWith({
    String? id,
    String? name,
    String? logoPath,
    bool? isSelected,
  }) {
    return Brand(
      id: id ?? this.id,
      name: name ?? this.name,
      logoPath: logoPath ?? this.logoPath,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
