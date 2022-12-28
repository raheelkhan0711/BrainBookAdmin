// ignore_for_file: file_names

import 'package:brain_book_admin/Views/OverAll-App-Widgets/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Widgets/Country_Components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/states_screen.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../Global_Controller/Global_controller.dart';

class CountryScreenBody extends GetView<CountryScreenController> {
  const CountryScreenBody({super.key});

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
                                  title1: 'Countries',
                                  title2: 'You can see all the Countries here',
                                  title3: '',
                                ),
                                ButtonWidget(
                                    title: 'Add New Country',
                                    onTap: () {
                                      Get.find<GlobalController>()
                                          .CountryDailogBox(
                                              'Add New Country', 'Add');
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
                                child: GetBuilder<CountryScreenController>(
                                  builder: (_) {
                                    return GridView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                          controller.countriesResultList.length,
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      StatesScreen(
                                                        countryId: controller
                                                            .countriesResultList[
                                                                index]
                                                            .cId
                                                            .toString(),
                                                      )));
                                        },
                                        child: CountriesComponents(
                                          image: 'assets/startpage/37.png',
                                          title: controller
                                              .countriesResultList[index]
                                              .countryName
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
