import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_g_store/screens/home_page_screen/cubit/states.dart';
import 'package:pro_g_store/shared/dio_helper.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  HomePageCubit() : super(HomePageInitialState());

  static HomePageCubit get(context) => BlocProvider.of(context);

  getAllMovies() {
    emit(HomePageLoadingState());
    DioHelper.getAllMovies().then((value) {
      emit(HomePageSuccessState());
    }).onError((error, stackTrace) {
      emit(HomePageErrorState());
    });
  }

  getAllGames() {
    emit(HomePageLoadingState());
    DioHelper.getAllGames().then((value) {
      emit(HomePageSuccessState());
    }).onError((error, stackTrace) {
      emit(HomePageErrorState());
    });
  }

  getAllSeries() {
    emit(HomePageLoadingState());
    DioHelper.getAllSeries().then((value) {
      emit(HomePageSuccessState());
    }).onError((error, stackTrace) {
      emit(HomePageErrorState());
    });
  }

  getAllCourses() {
    emit(HomePageLoadingState());
    DioHelper.getAllCourses().then((value) {
      emit(HomePageSuccessState());
    }).onError((error, stackTrace) {
      emit(HomePageErrorState());
    });
  }
}
