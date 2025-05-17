import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: "https://rickandmortyapi.com/api"));

  Future<dynamic> fetchCharacters() async {
    final response = await dio.get("/character");
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("${response.data}");
    }
  }
  Future<dynamic> fetchEpisodes() async{
    final response = await dio.get("/episode");
    if(response.statusCode == 200){
      return response.data;
    }else{
      throw Exception("${response.data}");
    }
  }
  Future<dynamic> fetchLocations() async{
    final response = await dio.get("/location");
    if(response.statusCode == 200){
      return response.data;
    }else{
      throw Exception("${response.data}");
    }
  }
  Future<dynamic> fetchCharacterDetail(int id)async{
    var response = await dio.get("/character/$id");
    if(response.statusCode == 200){
      return response.data;
    }
  }
}
