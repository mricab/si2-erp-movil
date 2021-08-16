class Nurse {
  // data
  int id;
  String name;
  String lastname;

  Nurse(
    int id,
    String name,
    String lastname,
  ) {
    this.id = id;
    this.name = name;
    this.lastname = lastname;
  }

  Map<String, String> data() {
    return {
      'id': id.toString(),
      'name': name + ' ' + lastname,
    };
  }
}
