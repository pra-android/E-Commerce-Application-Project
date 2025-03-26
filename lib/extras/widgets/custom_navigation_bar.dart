import 'package:ecommerce_application/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final countValue = ref.watch(bottomCounterProvider);
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: countValue,
          onTap: (value) {
            ref.read(bottomCounterProvider.notifier).state = value;
          },
          selectedItemColor: Colors.blue.shade600,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),

            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.firstOrder),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.person),
              label: "Profile",
            ),
          ],
        );
      },
    );
  }
}
