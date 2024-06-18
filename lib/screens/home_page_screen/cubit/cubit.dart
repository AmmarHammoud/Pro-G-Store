import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_g_store/models/course_item.dart';
import 'package:pro_g_store/models/game_item.dart';
import 'package:pro_g_store/models/movie_item.dart';
import 'package:pro_g_store/models/series_item.dart';
import 'package:pro_g_store/screens/home_page_screen/cubit/states.dart';
import 'package:pro_g_store/shared/dio_helper.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  HomePageCubit() : super(HomePageInitialState());

  static HomePageCubit get(context) => BlocProvider.of(context);

  List<MovieItem> movies = [];
  List<SeriesItem> series = [];
  List<GameItem> games = [];
  List<CourseItem> courses = [];

  getAllItems() {
    getAllGames();
    getAllMovies();
    getAllCourses();
    getAllSeries();
  }

  getAllMovies() {
    //print('get all movies');
    emit(LoadingAllMovies());
    movies.clear();
    DioHelper.getAllMovies().then((value) {
      print(value.data['data'][0]);
      for (int i = 0; i < value.data['data'].length; i++) {
        movies.add(MovieItem.fromJson(value.data['data'][i]));
      }
      emit(LoadedAllMoviesSuccessfully());
    }).onError((error, stackTrace) {
      print(error.toString());
      emit(LoadedAllMoviesError());
    });
  }

  getAllGames() {
    emit(LoadingAllGames());
    games.clear();
    DioHelper.getAllGames().then((value) {
      for (int i = 0; i < value.data['data'].length; i++) {
        games.add(GameItem.fromJson(value.data['data'][i]));
      }
      emit(LoadedAllGamesSuccessfully());
    }).onError((error, stackTrace) {
      emit(LoadedAllGamesError());
    });
  }

  getAllSeries() {
    emit(LoadingAllSeries());
    series.clear();
    DioHelper.getAllSeries().then((value) {
      for (int i = 0; i < value.data['data'].length; i++) {
        series.add(SeriesItem.fromJson(value.data['data'][i]));
      }
      emit(LoadedAllSeriesSuccessfully());
    }).onError((error, stackTrace) {
      emit(LoadedAllSeriesError());
    });
  }

  getAllCourses() {
    emit(LoadingAllCourses());
    courses.clear();
    DioHelper.getAllCourses().then((value) {
      for (int i = 0; i < value.data['data'].length; i++) {
        courses.add(CourseItem.fromJson(value.data['data'][i]));
      }
      emit(LoadedAllCoursesSuccessfully());
    }).onError((error, stackTrace) {
      emit(LoadedAllCoursesError());
    });
  }
}
