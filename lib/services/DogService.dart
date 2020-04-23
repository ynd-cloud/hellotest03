import 'dart:async';
import 'dart:convert';
import 'package:hellotest03/api/ApiDogsDao.dart';
import 'package:http/http.dart' as Http;
 
class DogService {
 static Future<ApiDogsDao> randomDog() async {
    var url = "https://dog.ceo/api/breeds/image/random";
    var response = await Http.get(url);
    Map map = json.decode(response.body);
    ApiDogsDao msg = ApiDogsDao.fromJson(map);
    print("URL image = " + msg?.message);
    return msg;
  }
}

