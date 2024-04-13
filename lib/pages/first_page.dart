import 'package:flut/pages/home_page.dart';
import 'package:flut/pages/profile_page.dart';
import 'package:flut/pages/settings_page.dart';
import 'package:flut/pages/third_pages.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selecteddPage = 0;

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];


   void navigationBottomBar(int index){
    setState(() {
      _selecteddPage = index;
    });
   }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[300],
        title: const Text("App "),
      ),
      body: _pages[_selecteddPage],
      drawer: Drawer(
        elevation: 1,
        backgroundColor: Colors.deepPurple[200],
        child:  Column(
          children: [
             const DrawerHeader(
                child: Icon(
                  Icons.ac_unit_outlined,
                  size: 48,
                )
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("H O M E"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, "/home");
              },
            ),
             ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("S E T T I N G S"),
               onTap: (){
                 Navigator.pop(context);
                 Navigator.pushNamed(context, "/second");
               },
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selecteddPage,
        onTap: navigationBottomBar,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
        ],
      ),
    );
  }
}
