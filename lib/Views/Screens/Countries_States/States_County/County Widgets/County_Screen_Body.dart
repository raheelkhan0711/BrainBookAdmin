// ignore_for_file: file_names, implementation_imports

import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County%20Widgets/County_Components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountyScreenBody extends GetView<CountyScreenController> {
   CountyScreenBody({required this.stateId, super.key});
  final String stateId;
  final screenController= Get.find<CountryScreenController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
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
                                  title1: 'Counties',
                                  title2: 'You can see all the Counties here',
                                  title3: '',
                                ),
                                ButtonWidget(
                                    title: 'Add New County',
                                    onTap: () {
                                      Get.find<GlobalController>()
                                          .CountyDailogBox(
                                              'Add New County', stateId, 'Add');
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
                                child: GetBuilder<CountyScreenController>(
                                  builder: (_) {
                                    return GridView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                          controller.countyResultList.length,
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
                                          screenController.contryScreenPath.add(TownCityScreen(
                                            countyId: controller
                                                .countyResultList[
                                            index]
                                                .countyId
                                                .toString(),
                                          ));
                                          screenController.update();
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             TownCityScreen(
                                          //               countyId: controller
                                          //                   .countyResultList[
                                          //                       index]
                                          //                   .countyId
                                          //                   .toString(),
                                          //             )));
                                        },
                                        child: CountyComponents(
                                            image: 'assets/startpage/83.png',
                                            title: controller
                                                .countyResultList[index]
                                                .countyName
                                                .toString()),
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
