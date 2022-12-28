// ignore_for_file: file_names

import 'package:brain_book_admin/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Phrase_Screen/Translator_phrase_screen.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/Translator_Screen_Widgets/Translator_Components.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/translator_screen_controlller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorScreenBody extends GetView<TranslatorScreenController> {
  const TranslatorScreenBody({
    Key? key,
  }) : super(key: key);

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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const DashboardHomeText(
                                      title1: 'Translator',
                                      title2: 'Here add and delete languages',
                                      title3: '',
                                    ),
                                    ButtonWidget(
                                        title: 'Add new Language',
                                        onTap: () {
                                          Get.find<GlobalController>()
                                              .TranslatorDailogBox(
                                                  'Add new Languages', 'Add');
                                        }),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child:
                                        GetBuilder<TranslatorScreenController>(
                                      builder: (_) {
                                        return GridView.builder(
                                          shrinkWrap: true,
                                          physics: const ScrollPhysics(),
                                          itemCount: controller
                                              .translatorResultList.length,
                                          scrollDirection: Axis.vertical,
                                          gridDelegate:
                                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                            mainAxisExtent: 160,
                                            mainAxisSpacing: 20,
                                            maxCrossAxisExtent: 180,
                                            crossAxisSpacing: 20,
                                          ),
                                          itemBuilder: (context, index) =>
                                              InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        TranslatorPhraseScreen(
                                                      languageId: controller
                                                          .translatorResultList[
                                                              index]
                                                          .translatorId
                                                          .toString(),
                                                    ),
                                                  ));
                                            },
                                            child: TranslatorComponents(
                                              image: 'assets/startpage/59.png',
                                              title: controller
                                                  .translatorResultList[index]
                                                  .name
                                                  .toString(),
                                              translatorId: controller
                                                  .translatorResultList[index]
                                                  .translatorId
                                                  .toString(),
                                              edit: Icons.edit,
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
                  )),
        ),
      ),
    );
  }
}
