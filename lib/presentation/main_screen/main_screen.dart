import '../main_screen/widgets/vansbuttonno1section_item_widget.dart';
import 'package:dod1212com_s_application2/core/app_export.dart';
import 'package:dod1212com_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHeadSection(context),
                  SizedBox(height: 68.v),
                  _buildVansButtonNo1Section(context),
                  Spacer(flex: 57),
                  CustomElevatedButton(
                      height: 72.v,
                      width: 294.h,
                      text: "จองรถ".toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                      buttonTextStyle: theme.textTheme.headlineSmall!,
                      onPressed: () {
                        onTaptf(context);
                      }),
                  Spacer(flex: 42)
                ]))));
  }

  /// Section Widget
  Widget _buildHeadSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder46),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 55.v,
              width: 58.h,
              margin: EdgeInsets.only(bottom: 9.v)),
          Padding(
              padding: EdgeInsets.only(left: 144.h, top: 18.v, bottom: 27.v),
              child:
                  Text("nAME".toUpperCase(), style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Section Widget
  Widget _buildVansButtonNo1Section(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 14.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Vansbuttonno1sectionItemWidget();
            }));
  }

  /// Navigates to the addQueueScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addQueueScreen);
  }
}
