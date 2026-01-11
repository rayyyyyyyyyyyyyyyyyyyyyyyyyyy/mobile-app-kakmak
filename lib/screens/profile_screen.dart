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
      body: SingleChildScrollView(
        child: Column(
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
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 16.0,
              ),
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

            // Security Section
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
                            style: headingTextStyle.copyWith(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),

                    // 2. รายการเมนู Security
                    Column(
                      children: [
                        _buildSecurityMenu(
                          title: "Two-factor authentication",
                          subtitle: "Add an extra layer...",
                        ),
                        _buildSecurityMenu(
                          title: "Trusted devices",
                          subtitle: "Manage your devices",
                        ),
                        _buildSecurityMenu(
                          title: "Login history",
                          subtitle: "View recent activity",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // const SizedBox(height: 0.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
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
                  children: [
                    // ส่วนหัวข้อ (Header)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none_rounded,
                            color: primaryColor,
                            size: 24.0,
                          ),
                          const SizedBox(width: 12.0),
                          Text(
                            "Notifications",
                            style: headingTextStyle.copyWith(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 4.0),

                    // เรียกใช้ Widget ที่เราสร้างขึ้น (Clean & Readable!)
                    _buildNotificationItem(
                      title: "App Notification",
                      subtitle: "Play sound on receive",
                      value: true, // สมมติค่าว่าเป็น true
                      onChanged: (val) {
                        // ใส่โค้ดอัปเดตค่าตรงนี้ (setState)
                      },
                    ),

                    _buildNotificationItem(
                      title: "Email Notifications",
                      subtitle: "Receive email updates",
                      value: false, // สมมติค่าว่าเป็น false
                      onChanged: (val) {
                        // ใส่โค้ดอัปเดตค่าตรงนี้
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Preferences Section
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
                    // 2. ส่วนหัวข้อ (Header)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings_outlined, // ใช้ไอคอนรูปตัวปรับแต่ง
                            color: primaryColor,
                            size: 24.0,
                          ),
                          const SizedBox(width: 12.0),
                          Text(
                            "Preferences",
                            style: headingTextStyle.copyWith(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4.0),

                    // 3. รายการเมนู (Items)

                    // Item 1: Language (แบบมีลูกศรเหมือน Security)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Language",
                        style: bodyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        "English", // แสดงภาษาปัจจุบัน
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
                        // ใส่คำสั่งเปลี่ยนภาษา
                      },
                    ),

                    // Item 2: Dark Mode (แบบมีสวิตช์เหมือน Notification)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Dark Mode",
                        style: bodyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        "Use dark theme",
                        style: bodyTextStyle.copyWith(
                          fontSize: 14.0,
                          color: thirdColor,
                        ),
                      ),
                      trailing: Transform.scale(
                        scale: 0.6, // ย่อขนาดสวิตช์ให้เท่ากับส่วน Notification
                        child: Switch(
                          value: false, // สมมติว่าปิดอยู่
                          onChanged: (val) {
                            // ใส่คำสั่งเปลี่ยนธีม
                          },
                          activeColor: secondaryColor, // หัวปุ่มเมื่อเปิด
                          activeTrackColor: primaryColor, // รางปุ่ม

                          inactiveThumbColor: secondaryColor, // หัวปุ่มเมื่อปิด
                          inactiveTrackColor: thirdColor.withOpacity(0.4),
                          trackOutlineColor: MaterialStateProperty.all(
                            Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Container(
                // 1. ดีไซน์กรอบ (BoxDecoration) เหมือน Security
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
                    // 2. ส่วนหัวข้อ (Header)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline_rounded, // ไอคอนเครื่องหมายคำถาม
                            color: primaryColor,
                            size: 24.0,
                          ),
                          const SizedBox(width: 12.0),
                          Text(
                            "Help & Legal",
                            style: headingTextStyle.copyWith(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4.0),

                    // 3. รายการเมนู (Items)

                    // Item 1: Help & Support
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Help & Support",
                        style: bodyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        "Get assistance and contact us",
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
                        // ใส่คำสั่งไปหน้าช่วยเหลือ
                      },
                    ),

                    // Item 2: Terms & Policies
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Terms & Policies",
                        style: bodyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        "Read our terms of service",
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
                        // ใส่คำสั่งไปหน้าเงื่อนไข
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Logout Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity, // สั่งให้ปุ่มกว้างเต็มจอ
                child: OutlinedButton(
                  // เปลี่ยนจาก ElevatedButton เป็น OutlinedButton
                  onPressed: () {
                    // ใส่คำสั่งออกจากระบบ
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: lightBackgroundColor, // สีพื้นหลังปุ่ม
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ), // ความสูงของปุ่ม
                    side: BorderSide(
                      color: thirdColor,
                      width: 0.3,
                    ), // เส้นขอบ (ย้ายมาจาก Container)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ), // ความโค้ง (ย้ายมาจาก Container)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: logoutColor, size: 20.0),
                      const SizedBox(width: 8.0),
                      Text(
                        "Sign Out",
                        style: bodyTextStyle.copyWith(
                          color: logoutColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
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
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

Widget _buildSecurityMenu({
  required String title,
  required String subtitle,
  VoidCallback? onTap,
}) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(
      title,
      style: bodyTextStyle.copyWith(fontWeight: FontWeight.w600),
    ),
    subtitle: Text(
      subtitle,
      style: bodyTextStyle.copyWith(fontSize: 14.0, color: thirdColor),
    ),
    trailing: Icon(Icons.arrow_forward_ios, size: 16.0, color: thirdColor),
    onTap: onTap,
  );
}

// ฟังก์ชันสำหรับสร้างรายการ Notification แต่ละแถว
Widget _buildNotificationItem({
  required String title,
  required String subtitle,
  required bool value,
  required ValueChanged<bool> onChanged,
}) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(
      title,
      style: bodyTextStyle.copyWith(fontWeight: FontWeight.w600),
    ),
    subtitle: Text(
      subtitle,
      style: bodyTextStyle.copyWith(fontSize: 14.0, color: thirdColor),
    ),
    // ใช้ Switch สำหรับเปิด-ปิด
    trailing: Transform.scale(
      scale: 0.6, // ปรับขนาด Switch ให้เล็กลง
      child: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: secondaryColor, // หัวปุ่มเมื่อเปิด
        activeTrackColor: primaryColor, // รางปุ่ม

        inactiveThumbColor: secondaryColor, // หัวปุ่มเมื่อปิด
        inactiveTrackColor: thirdColor.withOpacity(0.4),
        trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
      ),
    ),
  );
}
