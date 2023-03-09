// ignore_for_file: prefer_const_constructors, unused_field, unused_import

import 'package:brain_book_admin/Core/Services/API_MODELS/Dashboard_Home_Models/dashboard_Home_states_model.dart';
import 'package:brain_book_admin/Core/Services/API_MODELS/Dashboard_Home_Models/dashboard_Home_users_model.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/Dashboard_Home_API_Provider/dashboard_Home_states_provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/Dashboard_Home_API_Provider/dashboard_Home_users_provider.dart';
import 'package:brain_book_admin/Views/Screens/Countries/countries_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/home_screen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/states_screen.dart';
import 'package:brain_book_admin/Views/Screens/LogOut/logout_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Subscriptions/subscriptionScreen.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/translator_screen.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  //..... Instances......//
  final DashboardHomeStatesProvider _dashboardStatesProvider =
      DashboardHomeStatesProvider();
  final DashboardHomeUsersProvider _dashboardUsersProvider =
      DashboardHomeUsersProvider();

  //..... On INIT FUNCTION FOR GETX(Controlller)......//
  @override
  Future<void> onInit() async {
    //......... called StatesMethod in variable on init function ......//
    _dashboardStatesResult.value = await _dashboardStatesProvider.totalStates();
    //......... called UsersMethod in variable on init function ......//
    _dashboardUsersResult.value = await _dashboardUsersProvider.totalUsers();
    super.onInit();
  }

  //......... Dashboard States Result......//
  final _dashboardStatesResult = Dashboard_Home_States_Model(count: 0).obs;
  Dashboard_Home_States_Model get pendingdResult1 =>
      _dashboardStatesResult.value;

  //......... Dashboard Users Result......//
  final _dashboardUsersResult = Dashboard_Home_Users_Model(count: 0).obs;
  Dashboard_Home_Users_Model get pendingResult2 => _dashboardUsersResult.value;

  //........ Variables Initialization for Admin Panael Nvigations.......//
  var isNew = false.obs;

  //........  this variables and gettter setter for Screen List.......//
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(value) => _selectedIndex.value = value;
//........  this variables and gettter setter for NewScreen List.......//
  final _tempSelectedIndex = 0.obs;
  int get tempSelectedIndex => _tempSelectedIndex.value;
  set tempSelectedIndex(value) => _tempSelectedIndex.value = value;

//........  this is for newscreen.......//
  onDestinationSelected(index) {
    isNew.value = false;
    selectedIndex = index;
  }

  //........ Admin Panel Nvigations through this machanism.......//

  //........  this is for Selected Index.......//
  List<Widget> screens = [
    const HomeScreen(),
    const CountriesScreen(),
    const SubscriptionScreen(),
    const UsersScreen(),
    const TranslatorScreen(),
    const LogoutScreen()
  ];

  //........  this is for  TempSelected Index.......//
  List<Widget> newScreens = [
    const HomeScreen(),
    CountriesScreen(),
    const SubscriptionScreen(),
    const UsersScreen(),
    const TranslatorScreen(),
    const LogoutScreen()
  ];
}
