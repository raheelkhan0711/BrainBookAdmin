// ignore_for_file: prefer_const_constructors

import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Binding.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/Catagory_binding.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County_Screen_Binding.dart';
import 'package:brain_book_admin/Views/Screens/Countries/countries_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Screen_Binding.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard/dashboard_screen.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard/dashboard_screen_binding.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/home_screen.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/home_screen_binding.dart';
import 'package:brain_book_admin/Views/Screens/LogOut/logout_Binding.dart';
import 'package:brain_book_admin/Views/Screens/LogOut/logout_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Login_Screen/login_screen.dart';
import 'package:brain_book_admin/Views/Screens/Login_Screen/login_screen_binding.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/Catagory_screen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/states_screen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/states_screen_binding.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen_binding.dart';
import 'package:brain_book_admin/Views/Screens/Subscriptions/SubscriptionScreen_binding.dart';
import 'package:brain_book_admin/Views/Screens/Subscriptions/subscriptionScreen.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Phrase_Screen/Translator_phrase_screen.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Phrase_Screen/Translator_phrase_screen_binding.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/translator_screen.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/translator_screen_binding.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen_binding.dart';
import 'package:get/route_manager.dart';
import 'app_routes.dart';

class Pages {
  static final pages = [
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: LoginScreenBinding()),
    GetPage(
        name: Routes.dashboardScreen,
        page: () => DashboardScreen(),
        binding: DashboardScreenBinding()),
    GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
        binding: HomeScreenBinding()),
    GetPage(
        name: Routes.countriesScreen,
        page: () => CountriesScreen(),
        binding: CountriesScreenBinding()),
    GetPage(
        name: Routes.statesScreen,
        page: () => StatesScreen(
              countryId: '',
            ),
        binding: StatesScreenBinding()),
    GetPage(
        name: Routes.countyScreen,
        page: () => CountyScreen(
              stateId: '',
            ),
        binding: CountyScreenBinding()),
    GetPage(
        name: Routes.townCityScreen,
        page: () => TownCityScreen(
              countyId: '',
            ),
        binding: TownCityScreenBinding()),
    GetPage(
        name: Routes.catagoryScreen,
        page: () => CatagoryScreen(
              townCityId: "",
            ),
        binding: CatogoryScreenBinding()),
    GetPage(
        name: Routes.subCatagoryScreen,
        page: () => SubCatagoryScreen(
              categoryId: "",
            ),
        binding: SubCatagoryScreenBinding()),
    GetPage(
        name: Routes.subscriptionScreen,
        page: () => SubscriptionScreen(),
        binding: SubscriptionScreenBinding()),
    GetPage(
        name: Routes.usersScreen,
        page: () => UsersScreen(),
        binding: UserScreenBinding()),
    GetPage(
        name: Routes.translatorScreen,
        page: () => TranslatorScreen(),
        binding: TranslatorScreenBinding()),
    GetPage(
        name: Routes.translatorPhraseScreen,
        page: () => TranslatorPhraseScreen(
              languageId: '',
            ),
        binding: TranslatorPhraseScreenBinding()),
    GetPage(
        name: Routes.logoutScreen,
        page: () => LogoutScreen(),
        binding: LogoutBinding()),
  ];
}
