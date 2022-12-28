// ignore_for_file: file_names, unnecessary_brace_in_string_interps

import 'package:brain_book_admin/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/AppColor/colors.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Phrase_Screen/Translator_phrase_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorPhraseSentences
    extends GetView<TranslatorPhraseScreenController> {
  const TranslatorPhraseSentences({
    required this.languageId,
    Key? key,
  }) : super(key: key);
  final String languageId;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Container(
            height: 350,
            width: Get.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: SingleChildScrollView(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 50, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'ID',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'English Sentence',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        'French Translation',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'Audio File',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 140),
                      child: Text(
                        'Action',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: controller.phraseResultList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        children: [
                          Text(
                            '${index}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 230,
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              controller.phraseResultList[index].english
                                  .toString(),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            width: 260,
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              controller.phraseResultList[index].targetLanguage
                                  .toString(),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            width: 230,
                          ),
                          Column(
                            children: [
                              const Icon(Icons.music_note),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  controller.phraseResultList[index].audioUrl
                                      .toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 280,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          bottomImageSelectedColor),
                                  onPressed: () {
                                    Get.find<GlobalController>()
                                        .EditPhraseDailogBox(
                                            'Edit Phrase', '', 'Update');
                                  },
                                  child: const Text('Action')),
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ]))));
  }
}
