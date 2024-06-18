import 'package:dio/dio.dart';

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
    return await dio.get('item/games');
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
