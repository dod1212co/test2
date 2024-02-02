import 'package:dod1212com_s_application2/core/app_export.dart';
import 'package:dod1212com_s_application2/widgets/custom_elevated_button.dart';
import 'package:dod1212com_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 37.h,
                  top: 118.v,
                  right: 37.h,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOriginal1642142171857,
                      height: 180.v,
                      width: 290.h,
                    ),
                    SizedBox(height: 88.v),
                    CustomTextFormField(
                      controller: priceController,
                      hintText: "USERNAME".toUpperCase(),
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(23.h, 12.v, 12.h, 12.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 22.v,
                          width: 20.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                    ),
                    SizedBox(height: 32.v),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "PASSWORD".toUpperCase(),
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(21.h, 11.v, 10.h, 11.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgBag,
                          height: 25.v,
                          width: 22.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 88.v),
                    CustomElevatedButton(
                      text: "LOGIN".toUpperCase(),
                    ),
                    SizedBox(height: 5.v),
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
