class Category {
  // data
  int id;
  String title;

  Category(
    int id,
    String title,
  ) {
    this.id = id;
    this.title = title;
  }

  Map data() {
    return {
      'id': id.toString(),
      'title': title,
    };
  }
}
