import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});
  final bool isAdmin = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        buildMenuItem(Icons.person, "User Details"),
        buildMenuItem(Icons.settings, "Privacy Policy"),
        buildMenuItem(Icons.lock, "Change Password"),
        buildMenuItem(Icons.logout, "Logout"),
        buildMenuItem(Icons.reviews_outlined, "Review about app"),
        buildMenuItem(Icons.exit_to_app, "Exit from app"),
        if (isAdmin == true)
          buildMenuItem(Icons.admin_panel_settings_outlined, "Admin Access"),
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
