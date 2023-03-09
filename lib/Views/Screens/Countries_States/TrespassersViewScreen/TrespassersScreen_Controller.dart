// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, avoid_print, unused_field, unused_local_variable
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Core/Services/API_MODELS/STATES/Sub_Catagory_Models/States_Sub_Catagory_SubTab_models/sub_catagory_SubTab_Get_Model.dart';
import 'package:brain_book_admin/Core/Services/API_MODELS/STATES/Sub_Catagory_Models/Sub_catagory_Text_Get_model.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/Countries_Providers/TrespassersProvider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/SubTab_Providers/SubTab_Delete_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/SubTab_Providers/SubTab_Get_Providers.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/SubTab_Providers/SubTab_Post_Providers.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/SubTab_Providers/SubTab_put_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/Text_Get_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/Text_Post_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/Text_Put_Provider.dart';
import 'package:brain_book_admin/Model/Trespassers/trespassersModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrespassersController extends GetxController {
  final formKey = GlobalKey<FormState>();
 String townId='';



  //.....Dynamic List for getting APIS DATA.....//
  List<TrespassersModel> tresPassersList = [];

  getTrespassets()async{
    tresPassersList = await Trespassers().getTrespassersDetails(townId);
    print('tresPassersList.length');
    print(tresPassersList.length);
    update();
  }

  updateTrespasser(TrespassersModel trespassersModel)async{
    TrespassersModel trespassersModelTest = await Trespassers().updateTrespasser(trespassersModel);
    print('t9');
   print(trespassersModelTest.trespasserName);
  }

  deleteTrespasser(TrespassersModel trespassersModel)async{
    TrespassersModel trespassersModelTest = await Trespassers().deleteTrespasser(trespassersModel);
    print('t9');
    print(trespassersModelTest.trespasserName);
  }
  Future<dynamic> tresPassersDialouge(TrespassersModel trespassersModel) {
    // TrespassersController _trespassersScreenController = TrespassersController();
    TextEditingController trespasserNameController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController trespasserAuthorizerController = TextEditingController();
    TextEditingController locationNameController = TextEditingController();
    TextEditingController dateTimeController = TextEditingController();
    TextEditingController policeDepartmentController = TextEditingController();
    TextEditingController otherNoteController = TextEditingController();
    trespasserNameController.text=trespassersModel.trespasserName!;
    addressController.text=trespassersModel.address!;
    trespasserAuthorizerController.text=trespassersModel.trespasserAuthorizer!;
    locationNameController.text=trespassersModel.locationName!;
    dateTimeController.text=trespassersModel.dateTime!.split('T')[0];
    policeDepartmentController.text=trespassersModel.policeDepartment!;
    otherNoteController.text=trespassersModel.otherNote!;
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: trespassersModel.trespasserName!,
        content: Container(
            height: 300,
            width: 400,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    //  Text(title),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        controller: trespasserNameController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          label: Text('Name'),
                          hintText: 'Name',
                          hintMaxLines: 1,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        controller: addressController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          label: Text('Adress'),
                          hintText: 'Adress',
                          hintMaxLines: 1,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        controller: trespasserAuthorizerController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          label: Text('Authorizer'),
                          hintText: 'Authorizer',
                          hintMaxLines: 1,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        controller: locationNameController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          label: Text('Location'),
                          hintText: 'Location',
                          hintMaxLines: 1,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        controller: dateTimeController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          label: Text('Date'),
                          hintText: 'Date',
                          hintMaxLines: 1,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        controller: policeDepartmentController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          label: Text('Police Deaprtment'),
                          hintText: 'Police Department',
                          hintMaxLines: 1,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(

                        controller: otherNoteController,
                        keyboardType: TextInputType.text,
                        maxLines: 4,
                        decoration: InputDecoration(
                          label: Text('Other Notes'),
                          hintText: 'Other Notes',
                          hintMaxLines: 1,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: ButtonWidget(
                          title: 'Update',
                          onTap: () async{
                            await updateTrespasser(TrespassersModel(
                              sId: trespassersModel.sId,
                              trespasserName: trespasserNameController.text,
                              address: addressController.text,
                              trespasserAuthorizer: trespasserAuthorizerController.text,
                              locationName: locationNameController.text,
                              dateTime: dateTimeController.text,
                              policeDepartment: policeDepartmentController.text,
                              profile: trespassersModel.profile,
                              otherNote: otherNoteController.text,
                              townCity: trespassersModel.townCity,
                              createdAt: trespassersModel.createdAt,
                              updatedAt: trespassersModel.updatedAt,

                            ));
                            Navigator.pop(Get.context!);
                          }),
                    )
                  ]),
            )));
  }


}
