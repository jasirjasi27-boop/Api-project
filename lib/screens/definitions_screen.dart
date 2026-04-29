import 'package:flutter/material.dart';

class DefinitionScreen extends StatelessWidget {
  final dynamic data; // ideally use List<DictionaryModel>

  const DefinitionScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Definition")),
      body:Center(child: Text(data.toString()),)
    );
  }
}