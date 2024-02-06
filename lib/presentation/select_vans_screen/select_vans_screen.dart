import '../select_vans_screen/widgets/vansbuttonno1section_item_widget.dart';
import 'package:dod1212com_s_application2/core/app_export.dart';
import 'package:dod1212com_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SelectVansScreen extends StatelessWidget {
  const SelectVansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHeadSection(context),
                  Spacer(flex: 29),
                  _buildVansButtonNo1Section(context),
                  Spacer(flex: 29),
                  CustomOutlinedButton(
                      width: 190.h,
                      text: "CANCEL".toUpperCase(),
                      margin: EdgeInsets.only(left: 107.h),
                      onPressed: () {
                        onTapCANCEL(context);
                      },
                      alignment: Alignment.centerLeft),
                  Spacer(flex: 40)
                ]))));
  }

  /// Section Widget
  Widget _buildHeadSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder46),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 55.v,
                  width: 58.h,
                  margin: EdgeInsets.only(bottom: 7.v)),
              Padding(
                  padding:
                      EdgeInsets.only(top: 18.v, right: 136.h, bottom: 25.v),
                  child: Text("nAME".toUpperCase(),
                      style: theme.textTheme.bodyMedium))
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
              return Vansbuttonno1sectionItemWidget(onTapVansButtonNo1: () {
                onTapVansButtonNo1(context);
              });
            }));
  }

  /// Navigates to the mainScreen when the action is triggered.
  onTapVansButtonNo1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }

  /// Navigates to the addQueueScreen when the action is triggered.
  onTapCANCEL(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addQueueScreen);
  }
}
