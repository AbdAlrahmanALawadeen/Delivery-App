import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBar extends StatefulWidget {

  const CustomNavigationBar({
    super.key,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 80.h,
      selectedIndex: _selectedIndex,
      onDestinationSelected: _onItemTapped,
      backgroundColor: Colors.white,
      destinations: [
        NavigationDestination(
          icon: SvgPicture.asset('assets/images/grid.svg', height: 24.h, width: 24.w),
          label: 'Grid',
        ),
        NavigationDestination(
          icon: SvgPicture.asset('assets/images/shopping-cart1.svg', height: 24.h, width: 24.w),
          label: 'Cart',
        ),
        NavigationDestination(
          icon: SvgPicture.asset('assets/images/user.svg', height: 24.h, width: 24.w),
          label: 'User',
        ),
      ],
    );
  }
}
