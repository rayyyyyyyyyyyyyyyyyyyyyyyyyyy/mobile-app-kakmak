import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 24.0,
          ),
          SizedBox(width: 16.0),
          Icon(
            Icons.exit_to_app,
            color: Colors.black,
            size: 24.0),
          SizedBox(width: 16.0),
        ],
        title: Center(child: const Text('Demo Mobile App')),
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 24.0,
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('First Line!',
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),),
            const Icon(Icons.settings,
                color: Colors.blue,
                size: 48.0
                ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: const Text("Hello",
                  style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Text("Hello",
                  style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Text("Hello",
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            CircleAvatar(
              radius: 55.0,
                backgroundColor: Colors.black,
              child: const CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Sz8ytxcxufLiD9UGNiwJgzxtqjKCzqnZqg&s"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[50],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}