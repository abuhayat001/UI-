import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_app/pages/Start.dart';
import 'package:project_app/pages/Storage.dart';
import 'Screen/navigation_var.dart';
import 'package:get/get.dart';
void main()async {
  await GetStorage.init();
  runApp(
      const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Storage.isFtistTime()?StartPage():Navigation_bar(),
        );
      },
    );
  }
}
