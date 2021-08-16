class Service {
  // data
  int id;
  String title;
  String description;
  double amount;
  int length;
  String image;

  Service(
    int id,
    String title,
    String description,
    double amount,
    int length,
    String image,
  ) {
    this.id = id;
    this.title = title;
    this.description = description;
    this.amount = amount;
    this.length = length;
    this.image = image;
  }

  Map data() {
    return {
      'id': id.toString(),
      'title': title,
      'description': description,
      'amount': amount.toString(),
      'length': length.toString(),
      'image': image,
    };
  }
}
