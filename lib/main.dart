import 'package:flutter/material.dart';

import 'features/home/views/home_view.dart';
import 'my_theme_data.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {HomeView.routeName: (context) => const HomeView()},
      initialRoute: HomeView.routeName,
      theme: MyTheme.lightTheme,
    );
  }
}
