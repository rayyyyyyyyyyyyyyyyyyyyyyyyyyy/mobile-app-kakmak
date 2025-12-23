import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 20.0),
            const Stack(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Sz8ytxcxufLiD9UGNiwJgzxtqjKCzqnZqg&s"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 13.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Onuma Dokpikul',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: (){}, 
              child: const Text("bp.onuma@gmail.com", style: TextStyle(color: Colors.white),)
            )
          ],
        ),
      )
    );
  }
}
