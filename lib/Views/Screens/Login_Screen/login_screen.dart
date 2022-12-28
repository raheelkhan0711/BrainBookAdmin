// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:brain_book_admin/Views/OverAll-App-Widgets/AppColor/colors.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/App-Images/images.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Login_Screen/login_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../OverAll-App-Widgets/TextFormField/text_form_field.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});
  // ValidatorController validatorController = Get.find();
  // bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          color: Colors.white.withOpacity(0.5),
          height: Get.height * 0.65,
          width: Get.width * 0.5,
          child: Padding(
            padding: const EdgeInsets.only(left: 150, right: 150, bottom: 30),
            child: Form(
              key: controller.formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 65,
                    ),
                    Image.asset(
                      splashImage,
                      height: 120,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldWidget(
                      controller: controller.emailController,
                      // validator: validatorController.emailValidator,
                      title: "Email",
                      icon: Icon(Icons.person_outlined, color: fontColorDark),
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Obx(
                      () => TextFormFieldWidget(
                        controller: controller.passwordController,
                        // validator: validatorController.passwordValidator,
                        title: "Password ",
                        icon: const Icon(
                          Icons.lock_open_outlined,
                          color: fontColorDark,
                        ),
                        obscureText: controller.obscure,
                        inkWell: GestureDetector(
                          onTap: () {
                            controller.obscure = !controller.obscure;
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0, right: 8),
                            child: Text(
                              controller.obscure ? "Show" : "Hide",
                              style: GoogleFonts.poppins(color: fontColorLight),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ListTile(
                    //   horizontalTitleGap: 0.0,
                    //   title: const Text(
                    //     "Remember me",
                    //     style: TextStyle(fontSize: 13),
                    //   ),
                    //   leading: Obx(
                    //     () => Transform.scale(
                    //       scale: 0.9,
                    //       child: Checkbox(
                    //         shape: CircleBorder(),
                    //         value: controller.rememberMe,
                    //         onChanged: (value) {
                    //           controller.rememberMe = value;
                    //         },
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 40,
                    ),
                    ButtonWidget(
                      title: "LOGIN",
                      onTap: () {
                        controller.adminLogIn();
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
