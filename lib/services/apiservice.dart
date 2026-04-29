import 'dart:convert';


import 'package:apiexam/screens/dictionaryapp.dart';
import 'package:apiexam/models/dictionary_model.dart';
import 'package:http/http.dart' as http;



class Apiservice {
  String Baseurl="http://api.dictionaryapi.dev/api/v2/entries/en/";
  
  
    getdata(String text)  async{


  try{
    final response = await http.get(Uri.parse(Baseurl+text));
    if(response.statusCode==200){
      
      var res = jsonDecode(response.body);

      print(  res[0]["meanings"][0]["definitions"][0]["definition"]);

      return res[0]["meanings"][0]["definitions"][0]["definition"];

    }else{
      throw Exception("failed to load data");
    }
  }catch(e){
    throw Exception(e);
  }
}



}