import 'package:flutter/material.dart';
import 'package:mobile_kakmak/constant/my_constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded, color: primaryColor, size: 24.0),
        actions: [
          Icon(Icons.search, color: primaryColor, size: 24.0),
          const SizedBox(width: 16.0),
          Icon(Icons.notifications, color: primaryColor, size: 24.0),
          const SizedBox(width: 16.0),
        ],
        backgroundColor: lightBackgroundColor,
        shape: Border(bottom: BorderSide(color: thirdColor, width: 0.3)),
      ),
      body: Column(
        children: [
          Padding(
            //Text Profile and subtitle
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Profile", style: headingTextStyle),
                  Text(
                    "Manage your account and preferences",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.0,
                      color: thirdColor,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            // Profile Card
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: lightBackgroundColor,
                border: Border.all(color: thirdColor, width: 0.3),
              ),
            
              child: Column( 
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.all(16.0)),
                  const SizedBox(height: 20.0),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Sz8ytxcxufLiD9UGNiwJgzxtqjKCzqnZqg&s",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Text('Onuma Dokpikul', style: headingTextStyle),
                  // const SizedBox(height: 20.0),
                  Text(
                    "bp.onuma@gmail.com",
                    style: headingTextStyle.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100,
                      color: thirdColor,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: verifiedBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "Verified",
                        style: bodyTextStyle.copyWith(
                          color: verifiedColor,
                          // fontWeight: FontWeight.,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: darkBackgroundColor,
                      ),
                      width: double.infinity,
                      height: 40,
                      // color: darkBackgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.edit,
                              color: secondaryColor,
                              size: 24.0,
                            ),
                            SizedBox(width: 20.0),
                            Text("Edit Profile", style: bodyTextStyle),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: secondaryColor,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      //Button Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: primaryColor,
        unselectedItemColor: thirdColor,
        backgroundColor: lightBackgroundColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
