import 'package:dio/dio.dart';

/*
Stack overflow:
when running on web
const String proxyUrl = 'https://cors-anywhere.herokuapp.com/';
const String baseUrl = proxyUrl + "BASE_URL.com";
* */
//192.168.52.17 mobile
//10.0.2.2 emulator
class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://localhost:8000/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getAllMovies() async {
    return await dio.get('item/movies');
  }

  static Future<Response> getAllGames() async {
    return await dio.get(
      'item/games',
      // options: Options(
      //   headers: {
      //     "Access-Control-Allow-Origin": "*",
      //     // Required for CORS support to work
      //     "Access-Control-Allow-Credentials": true,
      //     // Required for cookies, authorization headers with HTTPS
      //     "Access-Control-Allow-Headers":
      //         "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
      //     "Access-Control-Allow-Methods": "POST, OPTIONS",
      //     "content-type": "application/json"
      //   },
      // ),
    );
  }

  static Future<Response> getAllSeries() async {
    return await dio.get('item/serieses');
  }

  static Future<Response> getAllCourses() async {
    return await dio.get('item/courses');
  }

  static Future<Response> search({required String searchText}) async {
    return await dio.post(
      'item/search',
      data: {'field': searchText},
    );
  }

  static Future<Response> getItemByID({required int itemID}) async {
    return await dio.post(
      'item/details',
      data: {'id': itemID},
    );
  }

  static Future<Response> addItem({
    required String name,
    required int size,
    required int price,
    required int categoryID,
    required int subcategoryID,
  }) async {
    return await dio.post(
      'item/add',
      data: {
        'name': name,
        'size': size,
        'price': price,
        'category_id': categoryID,
        'subcategory_id': subcategoryID,
      },
    );
  }

  static Future<Response> updateItem({
    required int id,
    required String name,
    required int size,
    required int price,
    required int categoryID,
    required int subcategoryID,
  }) async {
    return await dio.post(
      'item/update',
      data: {
        'id': id,
        'name': name,
        'size': size,
        'price': price,
        'category_id': categoryID,
        'subcategory_id': subcategoryID,
      },
    );
  }

  static Future<Response> deleteItem({required int id}) async {
    return await dio.post('item/delete', data: {
      'id': id,
    });
  }
}
