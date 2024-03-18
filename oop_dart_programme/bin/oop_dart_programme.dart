import 'dart:convert';

import 'package:oop_dart_programme/oop_dart_programme.dart' as oop_dart_programme;

void main(List<String> arguments) {
  var newPhone = KeyFeatures(
    brand: "Samsung",
    model: "SamsungS23",
    osVersion: "Android_16",
    releaseYear: 2023,
    ram: "8GB",
    rom: "256GB",
    screenType: "AMOLED",
    chipset: "SNAPDRAGON-8nm",

  );

  newPhone.turnOn(true);

  if (newPhone.isTurnedOn()) {
    print("${newPhone.model} started. Version is ${newPhone.osVersion}, released in ${newPhone.releaseYear}");
  } else {
    print("${newPhone.brand} unable to switch on");
  }

  newPhone.printKeyFeatures();
}
class Phone {
  String? brand;
  String? model;
  int? releaseYear;
  String? osVersion;
  bool isOn = true;

  Phone({this.brand, this.model, this.releaseYear, this.osVersion});

  bool turnOn(bool turnOn) {
    isOn = turnOn;
    return turnOn;
  }

  bool isTurnedOn() {
    return isOn;
  }

  // Methods
  void charging() {
    print("Phone is a superfast charger");
  }

  void battery() {
    print("Phone has battery capacity of 5300 MAH");
  }

  void printKeyFeatures() {
    //  loop to print the key features
    print("Key Features:");
    final keyFeaturesMap = {
      'RAM': '8GB',
      'Screen Type': 'AMOLED',
      'ROM': '256GB',
      'MICRO CHIPSET': 'SNAPDRAGON-8nm',
    };

    keyFeaturesMap.forEach((key, value) {
      print("$key: $value");
    });
  }
}

class KeyFeatures extends Phone {
  String? ram;
  String? screenType;
  String? rom;
  String? chipset;

  KeyFeatures({
    String? brand,
    String? model,
    int? releaseYear,
    String? osVersion,
    this.ram,
    this.rom,
    this.screenType,
    this.chipset,
  }) : super(brand: brand, model: model, releaseYear: releaseYear, osVersion: osVersion);

  @override
  void printKeyFeatures() {
    print("Key Features:");
    print("RAM: $ram");
    print("ROM: $rom");
    print("Screen Type: $screenType");
    print("MICRO CHIPSET: $chipset");
  }
}
