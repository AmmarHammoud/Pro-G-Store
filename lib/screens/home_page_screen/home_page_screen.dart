import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_g_store/screens/home_page_screen/cubit/cubit.dart';
import 'package:pro_g_store/screens/home_page_screen/cubit/states.dart';
import 'package:pro_g_store/shared/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      HomePageCubit()
        ..getAllItems(),
      child: BlocConsumer<HomePageCubit, HomePageStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = HomePageCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Home',
                ),
                actions: [
                  IconButton(
                    onPressed: () {
//navigateTo(context, SearchScreen(model));
                    },
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Games'),
                      ItemsList(
                          condition: state is! LoadingAllGames,
                          list: cubit.games),
                      Text('Movies'),
                      ItemsList(
                          condition: state is! LoadingAllMovies,
                          list: cubit.movies),
                      Text('Courses'),
                      ItemsList(
                          condition: state is! LoadingAllCourses,
                          list: cubit.courses),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
