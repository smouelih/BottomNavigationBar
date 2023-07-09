import 'package:flutter/material.dart';
import 'package:getxscratch/Screens/ArchivedTasks.dart';
import 'package:getxscratch/Screens/DoneTasks.dart';

import 'NewTasks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //tex
  int currentindex = 0;

  List MyScreens = [
    NewTasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];

  List Titles = [
    'New',
    'Done',
    'Archived',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('${Titles[currentindex]}'.toUpperCase()),
        ),
      ),
      body: MyScreens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
            if(currentindex == 0){
              print('You are in New Tasks page');
            }else if (currentindex == 1){
              print('You are in Done Tasks page');
            }else if (currentindex == 2){
              print('You are in Archived Tasks page');
            }else  {}
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'New',
            icon: Icon(
              Icons.menu,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Done',
            icon: Icon(
              Icons.done,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Archived',
            icon: Icon(
              Icons.archive,
            ),
          ),
        ],
      ),
    );
  }
}
