// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:brain_book_admin/API_DATA/API_MODELS/Users%20Models/Admin_User_Get_Model.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/Users%20Providers/Admin_User_Get_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/Users%20Providers/Admin_User_Post_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/Users%20Providers/Admin_UsersDetails_Get_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/Users%20Providers/App_Users_Get_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserScreenController extends GetxController {
  //.....Instances.....//
  //  final String adminUserId;
  final AdminUserGetProvider _adminUserGetProvider = AdminUserGetProvider();
  final AdminUserPostProvider _adminUserPostProvider = AdminUserPostProvider();
  final AdminUsersDetailsGetProvider _adminUsersDetailsGetProvider =
      AdminUsersDetailsGetProvider();
  final AppUsersGetProvider _appUsersGetProvider = AppUsersGetProvider();

//.....Variables Initializations and admin text controllers.....//
  TextEditingController adminUserGetController = TextEditingController();
  TextEditingController adminUserNamePostController = TextEditingController();
  TextEditingController adminUserEmailPostController = TextEditingController();
  TextEditingController adminUserPhonePostController = TextEditingController();

  //.....Variables Initializations and admin text controllers.....//
  TextEditingController appUserGetController = TextEditingController();

  //  UserScreenController(this.adminUserId);

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called users data in variables on Init function ......//
    adminUserResultList = await _adminUserGetProvider.fetchAdminUserData();
    adminUserDetailsResultList =
        await _adminUsersDetailsGetProvider.fetchAdminUsersDetails('');
    //app usder data variable//
    appUserResultList = await _appUsersGetProvider.fetchAppUserData();
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

//.....Dynamic List for getting  admin APIS DATA.....//
  List<dynamic> adminUserResultList = [].obs;
  List<dynamic> adminUserDetailsResultList = [].obs;

  //.....Dynamic List for getting  admin APP users APIS DATA.....//
  List<dynamic> appUserResultList = [].obs;
  // List<dynamic> adminUserDetailsResultList = [].obs;

//...Add AdminUser Method in Controlller for calling a method in a Variables from Provider class ..//
  void createAdminUser() async {
    var _adminUserResult = await _adminUserPostProvider
        .addAdminUser(
            adminUserNamePostController.text,
            adminUserEmailPostController.text,
            adminUserPhonePostController.text)
        .whenComplete(() async {
      adminUserResultList.add(AdminUserGetModel(
          name: adminUserNamePostController.text,
          email: adminUserEmailPostController.text,
          phone: int.parse(adminUserPhonePostController.text)));
      adminUserNamePostController.clear();
      adminUserEmailPostController.clear();
      adminUserPhonePostController.clear();
      update();
    });
    if (_adminUserResult is String) {
      Get.snackbar(
        "Error",
        _adminUserResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }
}
