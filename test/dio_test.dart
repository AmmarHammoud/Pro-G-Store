import 'package:flutter_test/flutter_test.dart';
import 'package:pro_g_store/shared/dio_helper.dart';

void main() async {
  setUpAll(() => DioHelper.init());
  // var movieResponse = await DioHelper.getAllMovies();
  // var gamesResponse = await DioHelper.getAllGames();
  // var seriesResponse = await DioHelper.getAllSeries();
  // var coursesResponse = await DioHelper.getAllCourses();
  //
  // var movieCount = movieResponse.data['data'].length;
  // var gamesCount = gamesResponse.data['data'].length;
  // var seriesCount = seriesResponse.data['data'].length;
  // var coursesCount = coursesResponse.data['data'].length;
  //
  // var totalCount = movieCount + gamesCount + seriesCount + coursesCount;

  // test('get all movies', () async {
  //   var response = await DioHelper.getAllMovies();
  //   print(response.data['message']);
  // });
  // test('get all games', () async {
  //   var response = await DioHelper.getAllGames();
  //   print(response.data['message']);
  // });
  // test('get all series', () async {
  //   var response = await DioHelper.getAllSeries();
  //   print(response.data['message']);
  // });
  // test('get all courses', () async {
  //   var response = await DioHelper.getAllCourses();
  //   print(response.data['message']);
  // });
  // test('get item by id', () async {
  //   var response = await DioHelper.getItemByID(itemID: 1);
  //   print(response.data['message']);
  // });
  // test('add item', () async{
  //   var response = await DioHelper.addItem(name: 'name_test',
  //       size: 100000,
  //       price: 3000000,
  //       categoryID: 1,
  //       subcategoryID: 3);
  //   print(response.data['message']);
  // });
  // test('update item', () async {
  //   var response = await DioHelper.updateItem(id: 16,
  //       name: 'Mr. Brendon Olson PhD',
  //       size: 4444,
  //       price: 4444,
  //       categoryID: categoryID,
  //       subcategoryID: subcategoryID);
  //   print(response.data['message']);
  // });
  // test('delete item', () async{
  //   var response = await DioHelper.deleteItem(id: 1);
  //   print(response.data['message']);
  // });
  // test('search', () async {
  //   var response = await DioHelper.search(searchText: 'Mrs. ');
  //   print(response.data['message']);
  // });
}
