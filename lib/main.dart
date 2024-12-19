import 'package:delivery_app/screens/categories_screen.dart';
import 'package:delivery_app/screens/selected_category_screen.dart';
import 'package:delivery_app/widgets/category_children/details.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const DeliveryApp(),
    )
  );
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      builder: (BuildContext context, child) => MaterialApp(
        initialRoute: '/',
        routes: {
          '/' : (context) => const CategoriesScreen(),
          '/childScreen' : (context) => const ChildScreen(),
          '/details' : (context) => const ShowDetails(),
        },
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
