import 'package:flutter/material.dart';
import 'package:pro_g_store/screens/item.dart';
import 'package:pro_g_store/shared/components.dart';
import 'package:pro_g_store/shared/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              ItemsList(condition: 1 == 1, list: items),
              Text('Movies'),
              ItemsList(condition: 1 == 1, list: items),
              Text('Courses'),
              ItemsList(condition: 1 == 1, list: items),
            ],
          ),
        ),
      ),
    );
  }
}
