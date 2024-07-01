// mixins.dart
// Mixins example in Dart
mixin Pewter {
  void enhanceStrength() {
    print('Strength enhanced with Pewter.');
  }
}

// Mixin for Tin
mixin Tin {
  void enhanceSenses() {
    print('Senses enhanced with Tin.');
  }
}

// Mixin for Steel
mixin Steel {
  void pushMetals() {
    print('Pushes metals with Steel.');
  }
}

// Mixin for Iron
mixin Iron {
  void pullMetals() {
    print('Pulls metals with Iron.');
  }
}

// Base class
class Mistborn {
  String name;

  Mistborn(this.name);

  void introduce() {
    print('I am $name, a Mistborn.');
  }
}

// with keyword is used to add mixins to a class
class MistbornWithAbilities extends Mistborn with Pewter, Tin, Steel, Iron {
  MistbornWithAbilities(String name) : super(name);
}

void main() {
  MistbornWithAbilities vin = MistbornWithAbilities('Kelsier');
  vin.introduce(); // Output: I am Vin, a Mistborn.
  vin.enhanceStrength(); // Output: Strength enhanced with Pewter.
  vin.enhanceSenses(); // Output: Senses enhanced with Tin.
  vin.pushMetals(); // Output: Pushes metals with Steel.
  vin.pullMetals(); // Output: Pulls metals with Iron.
}
