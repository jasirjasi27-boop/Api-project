import 'dart:convert';

class DictionaryModel {
  final String word;
  final String? phonetic;
  final List<Phonetic> phonetics;
  final List<Meaning> meanings;

  DictionaryModel({
    required this.word,
    this.phonetic,
    required this.phonetics,
    required this.meanings,
  });

  factory DictionaryModel.fromJson(Map<String, dynamic> json) {
    return DictionaryModel(
      word: json['word'],
      phonetic: json['phonetic'],
      phonetics: (json['phonetics'] as List?)
              ?.map((e) => Phonetic.fromJson(e))
              .toList() ??
          [],
      meanings: (json['meanings'] as List?)
              ?.map((e) => Meaning.fromJson(e))
              .toList() ??
          [],
    );
  }
}

class Phonetic {
  final String? text;
  final String? audio;

  Phonetic({this.text, this.audio});

  factory Phonetic.fromJson(Map<String, dynamic> json) {
    return Phonetic(
      text: json['text'],
      audio: json['audio'],
    );
  }
}

class Meaning {
  final String partOfSpeech;
  final List<Definition> definitions;

  Meaning({
    required this.partOfSpeech,
    required this.definitions,
  });

  factory Meaning.fromJson(Map<String, dynamic> json) {
    return Meaning(
      partOfSpeech: json['partOfSpeech'],
      definitions: (json['definitions'] as List)
          .map((e) => Definition.fromJson(e))
          .toList(),
    );
  }
}

class Definition {
  final String definition;
  final List<String> synonyms;
  final List<String> antonyms;
  final String? example;

  Definition({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    this.example,
  });

  factory Definition.fromJson(Map<String, dynamic> json) {
    return Definition(
      definition: json['definition'],
      synonyms: List<String>.from(json['synonyms'] ?? []),
      antonyms: List<String>.from(json['antonyms'] ?? []),
      example: json['example'],
    );
  }
}