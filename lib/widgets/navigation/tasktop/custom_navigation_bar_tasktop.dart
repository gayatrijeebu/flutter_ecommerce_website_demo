import 'package:flutter/material.dart';

import '../navigation_actions.dart';
import '../navigation_bar_logo.dart';

class CustomNavigationBarTasktop extends StatelessWidget {
  const CustomNavigationBarTasktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // logo
          const NavigationBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: navigationActions,
          )
        ],
      ),
    );
  }
}