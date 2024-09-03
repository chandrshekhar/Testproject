import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testproject/core/constants/api_url.dart';
import 'package:testproject/model/api/api_client.dart';
/// this is controller class or viewModel class where we can seprate the business logic

class DashboardViewModel extends GetxController {
  /// This is variable who will be resposiable for the loading or shimmer show in the screen
  RxBool isLoading = false.obs;
  ApiClient apiClient = ApiClient();

  /// produc search text constroller
  final searchEditingController = TextEditingController();

  /// I will capture the response from the api and show in the ui from here

  Future<void> getProduct() async {
    isLoading(true);
    var data = await apiClient.getRequest(
        endPoint: ApiPaths.productList, fromJson: (v) => v);
    if(kDebugMode){
      log(data.toString());
    }

    isLoading(false);
  }
}
