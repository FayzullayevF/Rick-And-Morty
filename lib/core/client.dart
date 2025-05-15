import 'package:dio/dio.dart';

class ApiClient{
  final Dio dio = Dio(BaseOptions(baseUrl: "https://rickandmortyapi.com/api"));

  Future<Map<String, dynamic>> fetchCharacters() async{
    final response = await dio.get("/character");
    if(response.statusCode == 200){
      print(response.data);
      return response.data;

    }else{
      throw Exception("${response.data}");
    }
  }
}