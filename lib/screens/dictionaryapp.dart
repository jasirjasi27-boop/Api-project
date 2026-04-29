import 'package:apiexam/screens/definitions_screen.dart';
import 'package:apiexam/services/apiservice.dart';
import 'package:flutter/material.dart';

class Dictionaryapp extends StatefulWidget {
  const Dictionaryapp({super.key});

  @override
  State<Dictionaryapp> createState() => _DictionaryappState();
}

class _DictionaryappState extends State<Dictionaryapp> {

  var service = Apiservice();
  var namecntlr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Dictionary App"),
        
      ),
      body: Center(
        child:Column(
          children: [
            Text("Ender a word",
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
            TextField(

              controller: namecntlr,
              decoration: InputDecoration(hintText: "Type a word...",border: OutlineInputBorder(),icon:Icon(Icons.text_format))),

              ElevatedButton(
  onPressed: () async {
    final value = await service.getdata(namecntlr.text);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DefinitionScreen(data: value),
      ),
    );
  },
  child: const Text("Get Definition"),
)
            ])
       
        )
    );
  }
}