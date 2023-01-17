import 'package:brain_book_admin/Core/App-Utils/AppColor/colors.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard/dashboard_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends GetView<DashBoardController> {
  DashboardScreen({Key? key}) : super(key: key);
  final fg = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Row(
          children: <Widget>[
            ClipRRect(
              child: LayoutBuilder(builder: (context, constraints) {
                return SingleChildScrollView(
                  controller: ScrollController(),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: IntrinsicHeight(
                      child: NavigationRail(
                        backgroundColor: Colors.white,
                        selectedLabelTextStyle:
                            const TextStyle(color: backgroundColor),
                        selectedIndex: controller.selectedIndex,
                        extended: context.width > 1000 ? true : false,
                        onDestinationSelected: controller.onDestinationSelected,
                        leading: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Image(
                            width: 150,
                            height: 150,
                            image: AssetImage(
                              'assets/startpage/logo.png',
                            ),
                          ),
                        ),
                        destinations: const [
                          NavigationRailDestination(
                            icon: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/HomeIcon.png',
                                ),
                              ),
                            ),
                            selectedIcon: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/HomeIcon.png',
                                ),
                              ),
                            ),
                            label: Text(
                              'Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/7.png',
                                ),
                              ),
                            ),
                            selectedIcon: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/7.png',
                                ),
                              ),
                            ),
                            label: Text(
                              'Country',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/69.png',
                                ),
                              ),
                            ),
                            selectedIcon: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/69.png',
                                ),
                              ),
                            ),
                            label: Text(
                              'Subscriptions',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/2.png',
                                ),
                              ),
                            ),
                            selectedIcon: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/2.png',
                                ),
                              ),
                            ),
                            label: Text(
                              'Users',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/19.png',
                                ),
                              ),
                            ),
                            selectedIcon: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/19.png',
                                ),
                              ),
                            ),
                            label: Text(
                              'Translator',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/74.png',
                                ),
                              ),
                            ),
                            selectedIcon: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'assets/startpage/74.png',
                                ),
                              ),
                            ),
                            label: Text(
                              'Logout',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            Flexible(
                flex: 10,
                child: controller.isNew.value == true
                    ? controller.newScreens
                        .elementAt(controller.tempSelectedIndex)
                    : controller.screens.elementAt(controller.selectedIndex)),
          ],
        ),
      ),
    );
  }
}
