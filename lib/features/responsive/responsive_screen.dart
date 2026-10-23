import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.redAccent,
          height: 200.h,
          width: 400.w,
          child: Text('saas', style: TextStyle(fontSize: 15.sp)),
        ),
      ),
    );
  }
}
