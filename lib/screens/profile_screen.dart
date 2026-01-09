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
                  Text(
                    "Profile",
                    style: headingTextStyle.copyWith(fontSize: 18.0),
                  ),
                  Text(
                    "Manage your account and preferences",
                    style: bodyTextStyle.copyWith(
                      fontSize: 16.0,
                      color: thirdColor,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: lightBackgroundColor,
                border: Border.all(color: thirdColor, width: 0.3),
              ),
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // จัดกึ่งกลางแนวตั้ง
                children: [
                  // 1. ส่วนรูปภาพ (Avatar)
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Sz8ytxcxufLiD9UGNiwJgzxtqjKCzqnZqg&s",
                    ),
                  ),
                  const SizedBox(width: 16.0),

                  // 2. ส่วนข้อมูลตรงกลาง
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // จัดชิดซ้าย
                      mainAxisAlignment: MainAxisAlignment
                          .center, // จัดให้อยู่กลางแนวตั้งของพื้นที่ตัวเอง
                      children: [
                        Text(
                          'Onuma Dokpikul',
                          style: headingTextStyle.copyWith(fontSize: 18.0),
                        ),
                        Text(
                          "bp.onuma@gmail.com",
                          style: headingTextStyle.copyWith(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: thirdColor,
                          ),
                        ),
                        const SizedBox(height: 8.0),

                        // Badge Verified
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 4.0,
                          ),
                          decoration: BoxDecoration(
                            color: verifiedBackgroundColor,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize
                                .min, // ให้ Row มีขนาดพอดีกับเนื้อหา
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: verifiedColor,
                                size: 14.0,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                "Verified",
                                style: TextStyle(
                                  color: verifiedColor,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 3. ปุ่ม Edit
                  // จะถูกจัดให้อยู่กึ่งกลางแนวตั้ง (ระดับเดียวกับอีเมล) โดยอัตโนมัติจาก Row ด้านบน
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      side: BorderSide(color: thirdColor, width: 0.5),
                      backgroundColor: secondaryColor,
                    ),
                    child: Text(
                      "Edit",
                      style: bodyTextStyle.copyWith(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              decoration: BoxDecoration(
                color: lightBackgroundColor,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: thirdColor, width: 0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. ส่วนหัวข้อ Security
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shield_outlined,
                          color: primaryColor,
                          size: 24.0,
                        ),
                        const SizedBox(width: 12.0),
                        Text(
                          "Security",
                          style: headingTextStyle.copyWith(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 4.0),

                  // 2. รายการเมนู (ใช้ ListTile)
                  // Item 1: Two-factor
                  ListTile(
                    contentPadding: EdgeInsets
                        .zero, // ลบ padding ขอบซ้ายขวาเพื่อให้ตรงกับหัวข้อ
                    title: Text(
                      "Two-factor authentication",
                      style: bodyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      "Add an extra layer of security",
                      style: bodyTextStyle.copyWith(
                        fontSize: 14.0,
                        color: thirdColor,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                      color: thirdColor,
                    ),
                    onTap: () {
                      // ใส่คำสั่งเมื่อกด
                    },
                  ),

                  // Item 2: Trusted devices
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Trusted devices",
                      style: bodyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      "Manage your devices",
                      style: bodyTextStyle.copyWith(
                        fontSize: 14.0,
                        color: thirdColor,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                      color: thirdColor,
                    ),
                    onTap: () {},
                  ),

                  // Item 3: Login history
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Login history",
                      style: bodyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      "View recent activity",
                      style: bodyTextStyle.copyWith(
                        fontSize: 14.0,
                        color: thirdColor,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                      color: thirdColor,
                    ),
                    onTap: () {},
                  ),

                  // เพิ่ม Padding ด้านล่างนิดหน่อยเพื่อให้ Card ดูไม่แน่นเกินไป
                  const SizedBox(height: 8.0),
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
