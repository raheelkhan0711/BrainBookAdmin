// ignore_for_file: unnecessary_import, file_names

import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/States_Screens_Widgets/State_Components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/state_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StatesScreenBody extends GetView<StatesScreenController> {
   StatesScreenBody({
    required this.countryId,
    Key? key,
  }) : super(key: key);
  final screenController= Get.find<CountryScreenController>();
  final String countryId;

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
                                  title1: 'States',
                                  title2: 'You can see all the states here',
                                  title3: '',
                                ),
                                ButtonWidget(
                                    title: 'Add New States',
                                    onTap: () {
                                      Get.find<GlobalController>()
                                          .StatesDailogBox('Add New States',
                                              countryId, 'Add');
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
                                child: GetBuilder<StatesScreenController>(
                                  builder: (_) {
                                    return GridView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                          controller.statesResultList.length,
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
                                          screenController.contryScreenPath.add(CountyScreen(
                                            stateId: controller
                                                .statesResultList[
                                            index]
                                                .stateId
                                                .toString(),
                                          ));
                                          screenController.update();

                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             CountyScreen(
                                          //               stateId: controller
                                          //                   .statesResultList[
                                          //                       index]
                                          //                   .stateId
                                          //                   .toString(),
                                          //             )));
                                        },
                                        child: StatesComponents(
                                          image: 'assets/startpage/7.png',
                                          title: controller
                                              .statesResultList[index].state
                                              .toString(),
                                          countryId: countryId,
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
