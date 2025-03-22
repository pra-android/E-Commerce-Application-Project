import 'package:ecommerce_application/extras/constants/widget_constant.dart';
import 'package:ecommerce_application/extras/widgets/custom_navigation_bar.dart';
import 'package:ecommerce_application/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: WidgetConstant.listofscreens[ref.watch(bottomCounterProvider)],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
