
import 'package:flutter/material.dart';
import 'package:projet_flutter_finale/screens/chatPage.dart';

import 'loginPage.dart';
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(index),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() => index = value),
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chats"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

Widget _getBody(int index) {
  switch (index) {
    case 0:
      return ChatPage(); // Create this function, it should return your first page as a widget
    case 1:
      return LoginPage(); // Create this function, it should return your second page as a widget

  }

  return Center(child: Text("There is no page builder for this index."),);
}
