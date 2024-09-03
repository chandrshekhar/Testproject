import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/core/constants/colors.dart';

class PizzaCardWidget extends StatelessWidget {
  const PizzaCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(
          color: AppColor.secondary,
          borderRadius: BorderRadius.circular(100.r)),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundImage: const NetworkImage(
                "https://www.allrecipes.com/thmb/0xH8n2D4cC97t7mcC7eT2SDZ0aE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6776_Pizza-Dough_ddmfs_2x1_1725-fdaa76496da045b3bdaadcec6d4c5398.jpg"),
          ),
          SizedBox(height: 10.h),
          Text(
            "Pizza",
            style: TextStyle(fontSize: 14.sp, color: Colors.white),
          )
        ],
      ),
    );
  }
}
