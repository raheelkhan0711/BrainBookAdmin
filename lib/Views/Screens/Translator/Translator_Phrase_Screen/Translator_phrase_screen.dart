// ignore_for_file: file_names, unnecessary_brace_in_string_interps

import 'package:brain_book_admin/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Phrase_Screen/Translator_Phrase_Screen_Widgets/Translator_Phrase_Sentence.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Phrase_Screen/Translator_phrase_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorPhraseScreen extends GetView<TranslatorPhraseScreenController> {
  const TranslatorPhraseScreen({required this.languageId, super.key});
  final String languageId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<TranslatorPhraseScreenController>(
        init: TranslatorPhraseScreenController(languageId),
        builder: (_) {
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
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const DashboardHomeText(
                                            title1: 'Language Name',
                                            title2:
                                                'Here you can sentences and translation',
                                            title3: ''),
                                        const SizedBox(
                                          width: 900,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 45,
                                            child: TextFormField(
                                              keyboardType: TextInputType.text,
                                              maxLines: 1,
                                              decoration: InputDecoration(
                                                  hintText: 'search here',
                                                  hintMaxLines: 1,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 4.0),
                                                  ),
                                                  suffixIcon:
                                                      const Icon(Icons.search)),
                                            ),
                                          ),
                                        ),
                                        ButtonWidget(
                                            title: 'Add New phrase',
                                            onTap: () {
                                              Get.find<GlobalController>()
                                                  .PhraseDailogBox(
                                                      'Add New Phrase',
                                                      languageId,
                                                      'Add');
                                            }),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  TranslatorPhraseSentences(
                                    languageId: languageId,
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
