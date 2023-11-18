import 'package:flutter/material.dart';
import 'package:mansoon_app/favorite.dart';
import 'package:mansoon_app/home_screen.dart';
import 'package:mansoon_app/my_profile.dart';
import 'package:mansoon_app/search.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
 
  int _Index = 0;
  List pages = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const MyProfile(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: pages[_Index],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 18,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                currentIndex: _Index,
                onTap: (value) {
                  setState(() {
                    _Index = value;
                  });
                },
                backgroundColor: Colors.white,
                selectedItemColor: const Color.fromARGB(255, 123, 84, 230),
                unselectedItemColor: const Color.fromARGB(255, 195, 155, 230),
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: '',
                  ),
                  
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_outlined),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
