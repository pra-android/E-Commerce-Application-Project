import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});
  final bool isAdmin = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),

        buildMenuItem(Icons.person, "User Details"),
        if (isAdmin == true)
          buildMenuItem(Icons.admin_panel_settings_outlined, "Admin Access"),
        buildMenuItem(Icons.notifications, "Notifications"),

        SizedBox(height: 2.h),
        buildMenuItem(Icons.logout, "Logout"),

        SizedBox(height: 2.h),
        buildMenuItem(Icons.lock, "Change Password"),
        SizedBox(height: 2.h),
        buildMenuItem(Icons.settings, "Privacy Policy"),
        SizedBox(height: 2.h),
        buildMenuItem(Icons.reviews_outlined, "Review about app"),
        SizedBox(height: 2.h),
        buildMenuItem(Icons.exit_to_app, "Exit from app"),
      ],
    );
  }

  Widget buildMenuItem(
    IconData icon,
    String title, {
    Color color = Colors.black,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color, fontSize: 16)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {},
    );
  }
}
