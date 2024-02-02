import '../select_vans_screen/widgets/vansbuttonno1section1_item_widget.dart';
import 'package:dod1212com_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class SelectVansScreen extends StatelessWidget {
  const SelectVansScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeadSection(context),
              Spacer(
                flex: 26,
              ),
              _buildVansButtonNo1Section(context),
              Spacer(
                flex: 73,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeadSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder46,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 55.adaptSize,
            width: 55.adaptSize,
            margin: EdgeInsets.only(bottom: 13.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 134.h,
              top: 18.v,
              bottom: 31.v,
            ),
            child: Text(
              "nAME".toUpperCase(),
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVansButtonNo1Section(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 14.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Vansbuttonno1section1ItemWidget();
        },
      ),
    );
  }
}
