import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:notes_app/utils/constants.dart';

class Api {
  Future getNotes() async {
    try {
      var response =
          await http.get(Uri.parse(AppConstants.apiUrl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      throw e;
    }
  }
  Future createNote(String title, String body)async{
    var data = {
      "title": title
      ,"body": body
    };
   try{
     var response =await http.post(Uri.parse(AppConstants.apiUrl), body: jsonEncode(data), headers: {
       'Content-Type': 'application/json; charset=UTF-8'
     });
     if(response.statusCode ==200){
       print("Note Added Successfully!");
     }
     else{
       print("Something went wrong");
     }
   }catch(e){
     throw e
;   }

}
 Future deleteNote(int id)async{
  try{
    var response = await http.delete(Uri.parse("${AppConstants.apiUrl}/$id"));
    if(response.statusCode==200){
      print("Note Deleted Successfully!");
    }
    else{
      print("Something went wrong!");
    }
  }catch(e){
    throw e;
  }

 }
  Future updateNote(String title, String body,int id)async{
    var data = {
      "title": title
      ,"body": body
    };
    try{
      var response =await http.post(Uri.parse("${AppConstants.apiUrl}/$id"), body: jsonEncode(data), headers: {
        'Content-Type': 'application/json; charset=UTF-8'
      });
      if(response.statusCode ==200){
        print("Note Added Successfully!");
      }
      else{
        print("Something went wrong");
      }
    }catch(e){
      throw e
      ;   }

  }
}
