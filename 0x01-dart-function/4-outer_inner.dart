void outer(String name, String id) {
  String inner() {
    List<String> nameP = name.split(' ');
    String firstName = nameP[0];
    String lastName = nameP.length > 1 ? nameP[1] : '';

    return 'Hello Agent ${lastName.substring(0, 1)}.$firstName your id is $id';
  }

  print(inner());
}