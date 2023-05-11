import 'dart:convert';
class DataModel {
  List<Surah> surahs = [];
  DataModel.fromJson(Map<String, dynamic> json) {
    json["surahs"].forEach((element) {
      surahs.add(Surah.fromJson(element));
    });
  }
}

class Surah {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  String? revelationType;
  List<Ayah> ayahs = [];
  Surah.fromJson(Map<String, dynamic> json) {
    number = json["number"];
    name = json["name"];
    englishName = json["englishName"];
    englishNameTranslation = json["englishNameTranslation"];
    revelationType = json["revelationType"];
    json["ayahs"].forEach((element) {
      ayahs.add(Ayah.fromJson(element));
    });
  }
}

class Ayah {
  int? number;
  String? text;
  int? numberInSurah;
  int? juz;
  int? manzil;
  int? page;
  int? ruku;
  int? hizbQuarter;
  bool? sajda;
  Ayah.fromJson(Map<String, dynamic> json) {
    number = json["number"];
    text = json["text"];
    numberInSurah = json["numberInSurah"];
    juz = json["juz"];
    manzil = json["manzil"];
    page = json["page"];
    ruku = json["ruku"];
    hizbQuarter = json["hizbQuarter"];
    sajda = json["sajda"];
  }
}
