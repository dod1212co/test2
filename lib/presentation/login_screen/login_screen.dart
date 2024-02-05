import 'package:dod1212com_s_application2/core/app_export.dart';
import 'package:dod1212com_s_application2/widgets/custom_elevated_button.dart';
import 'package:dod1212com_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.teal500,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 37.h, top: 118.v, right: 37.h),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgOriginal1642142171857,
                                  height: 180.v,
                                  width: 290.h),
                              SizedBox(height: 88.v),
                              CustomTextFormField(
                                  controller: priceController,
                                  hintText: "USERNAME".toUpperCase()),
                              SizedBox(height: 32.v),
                              CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "PASSWORD".toUpperCase(),
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  obscureText: true),
                              SizedBox(height: 88.v),
                              CustomElevatedButton(
                                  text: "LOGIN".toUpperCase(),
                                  onPressed: () {
                                    onTapLOGIN(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Navigates to the mainScreen when the action is triggered.
  onTapLOGIN(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
