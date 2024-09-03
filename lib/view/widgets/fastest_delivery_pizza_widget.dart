import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/core/constants/colors.dart';

class FastestDeliveryPizzaWidget extends StatelessWidget {
  const FastestDeliveryPizzaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.w,
      margin: EdgeInsets.only(right: 10.w),
      decoration: BoxDecoration(
          color: AppColor.secondary, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 120.h,
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r)),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.allrecipes.com/thmb/0xH8n2D4cC97t7mcC7eT2SDZ0aE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6776_Pizza-Dough_ddmfs_2x1_1725-fdaa76496da045b3bdaadcec6d4c5398.jpg"))),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: AppColor.whiteColor,
                )),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pizza",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            Icon(Icons.timer_outlined,
                                size: 15.sp, color: const Color(0xFF4d2e2c)),
                            SizedBox(width: 5.w),
                            const Text(
                              "12-25 min",
                              style: TextStyle(color: AppColor.whiteColor),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,
                            size: 20.sp, color: AppColor.yellowColor),
                        SizedBox(width: 5.w),
                        const Text(
                          "8.4 Very Good(124)",
                          style: TextStyle(color: AppColor.whiteColor),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey),
                            child: Text(
                              "Fastfood",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Container(
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey),
                            child: Text(
                              "Chicken",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Container(
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey),
                            child: Text(
                              "Fries",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]))
        ],
      ),
    );
  }
}
