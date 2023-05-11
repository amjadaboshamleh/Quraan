import 'package:dio/dio.dart';

class Dio_Controller {
  static Dio? dio;
  static initUrl() {
    dio = Dio(BaseOptions(baseUrl: "http://api.alquran.cloud/"));
  }
  static Future<Response?> getData(String path)async{
    return await  dio?.get(path);
  }
}

