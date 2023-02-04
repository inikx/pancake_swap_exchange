// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
class Token {
  String name;
  String description;
  String imagePath;
  String address;
  bool selected;
  Token({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.address,
    this.selected = false,
  });

  static List<Token> deepCopyList(List<Token> original) {
    return original
        .map(
          (token) => Token(
            name: token.name,
            description: token.description,
            imagePath: token.imagePath,
            address: token.address,
            selected: token.selected,
          ),
        )
        .toList();
  }

  @override
  String toString() {
    return 'Token(name: $name, description: $description, imagePath: $imagePath, address: $address, selected: $selected)';
  }
}
