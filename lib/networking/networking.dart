import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkHelper{
  String url;

  NetworkHelper(this.url);

  Future getData() async{
    var response =await http.get(url);
    if(response.statusCode == 200){
      String data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    }else{
      throw Exception('failed to call api');
    }

  }
}