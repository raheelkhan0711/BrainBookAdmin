// ignore_for_file: file_names

import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Widgets/TownCity_Componenets.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/Catagory_screen.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TownCityScreenBody extends GetView<TownCityScreenController> {
  TownCityScreenBody({
    super.key,
    required this.countyId,
  });
  final String countyId;
  final screenController= Get.find<CountryScreenController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 0),
        child: ClipRect(
          child: Navigator(
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (context) => SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey.shade200,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const DashboardHomeText(
                                  title1: 'Towns and Cities',
                                  title2:
                                      'You can see all the Towns and Cities here',
                                  title3: '',
                                ),
                                ButtonWidget(
                                    title: 'Add New Town&City',
                                    onTap: () {
                                      Get.find<GlobalController>()
                                          .TownCityDailogBox(
                                              'Add New Town&City',
                                              countyId,
                                              'Add');
                                    }),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 25,
                                ),
                                child: GetBuilder<TownCityScreenController>(
                                  builder: (_) {
                                    return GridView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                          controller.townCityResultList.length,
                                      scrollDirection: Axis.vertical,
                                      gridDelegate:
                                          const SliverGridDelegateWithMaxCrossAxisExtent(
                                        mainAxisExtent: 125,
                                        mainAxisSpacing: 20,
                                        maxCrossAxisExtent: 160,
                                        crossAxisSpacing: 20,
                                      ),
                                      itemBuilder: (context, index) => InkWell(
                                        onTap: () {
                                          screenController.contryScreenPath.add(CatagoryScreen(
                                            townCityId: controller
                                                .townCityResultList[
                                            index]
                                                .townCityId
                                                .toString(),
                                          ));
                                          screenController.update();
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             CatagoryScreen(
                                          //               townCityId: controller
                                          //                   .townCityResultList[
                                          //                       index]
                                          //                   .townCityId
                                          //                   .toString(),
                                          //             )));
                                        },
                                        child: TownCityComponents(
                                          image: 'assets/startpage/19.png',
                                          title: controller
                                              .townCityResultList[index]
                                              .townCityName
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
