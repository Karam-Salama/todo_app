// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:todo_app/my_theme_data.dart';
import '../../settings/views/setting_view.dart';
import '../widgets/tasks_list_tap_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = 'home';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  var taps = const [
    TasksListTap(),
    SettingView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 0,
        backgroundColor: MyTheme.lightPrimary,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('To Do List'),
        ),
      ),
      body: taps[selectedIndex],
      // Floating Action Button and Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        height: 89,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: MyTheme.lightPrimary,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add task action
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:todo_app/features/settings/views/setting_view.dart';

// import '../widgets/tasks_list_tap.dart';

// class HomeView extends StatefulWidget {
//   static const String routeName = 'home';
//   const HomeView({super.key});
//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   int selectedIndex = 0;

//   var taps = const [
//     TasksListTap(),
//     SettingView(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Padding(
//         padding: EdgeInsets.symmetric(horizontal: 2.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Icon(Icons.menu_rounded, color: Colors.white),
//             Text('TODO'),
//           ],
//         ),
//       )),
//       body: taps[selectedIndex],
//       bottomNavigationBar: BottomAppBar(
//         height: 90,
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 8,
//         child: BottomNavigationBar(
//           currentIndex: selectedIndex,
//           onTap: (index) {
//             setState(() {
//               selectedIndex = index;
//             });
//           },
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
//             BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
//           ],
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }