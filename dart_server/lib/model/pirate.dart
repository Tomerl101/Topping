class Pirate {
  String name;
  String appellation;

  // A message class must have a default constructor taking no
  // arguments.
  Pirate();

  // It is fine to have other named constructors.
  Pirate.fromString(String pirateName) {
    var parts = pirateName.split(' the ');
    name = parts[0];
    appellation = parts[1];
  }

  String toString() => name.isEmpty ? '' : '$name the $appellation';
}
