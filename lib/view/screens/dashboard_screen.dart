import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/core/constants/strings.dart';
import 'package:testproject/core/global%20widgets/custom_textfields.dart';
import 'package:testproject/view/widgets/fastest_delivery_pizza_widget.dart';
import 'package:testproject/view/widgets/pizza_card_widget.dart';
import 'package:testproject/view_model/dashboard_view_model.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final dashboardViewModel = DashboardViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282a37),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 14.h, horizontal: 8.w),
                      decoration: BoxDecoration(
                          color: const Color(0xff32323e),
                          borderRadius: BorderRadius.circular(15.sp)),
                      child: Icon(Icons.sort, color: Colors.white, size: 25.sp),
                    ),
                    Column(children: [
                      Text(AppStrings.deliveryTo,
                          style: TextStyle(
                              color: const Color(0xFF4d2e2c),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500)),
                      Text("02-075 kolkata west bengal",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500)),
                    ]),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 14.h, horizontal: 8.w),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://img.etimg.com/thumb/width-1200,height-1200,imgsize-87984,resizemode-75,msid-110627430/news/company/corporate-trends/gautam-adani-is-asias-richest-person-again-overtakes-ambani-on-bloomberg-index-with-111-bn-net-worth.jpg")),
                          color: const Color(0xff32323e),
                          borderRadius: BorderRadius.circular(18.r)),
                      child: Icon(Icons.sort, color: Colors.white, size: 25.sp),
                    )
                  ],
                ),
                SizedBox(height: 25.h),
                const Text(
                  AppStrings.heading,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(children: [
                    Expanded(
                        child: CustomTextField(
                      border: 15.sp,
                      cursorColor: Colors.grey,
                      focusBorderColor: Colors.grey,
                      focusColor: Colors.grey,
                      disableBorderColor: Colors.grey,
                      enableBorderColor: Colors.grey,
                      fillColor: const Color(0xFF32323e),
                      style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: AppStrings.searchHintText,
                      hintStyle: const TextStyle(color: Colors.grey),
                      keyboardType: TextInputType.text,
                      controller: dashboardViewModel.searchEditingController,
                    )),
                    SizedBox(width: 15.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                          color: const Color(0xff32323e),
                          borderRadius: BorderRadius.circular(18.sp)),
                      child: Icon(Icons.tune, color: Colors.white, size: 25.sp),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 120.h,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const PizzaCardWidget();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    AppStrings.fastDelivery,
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 240.h,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const FastestDeliveryPizzaWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
