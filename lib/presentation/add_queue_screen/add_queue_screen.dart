import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:dod1212com_s_application2/core/app_export.dart';
import 'package:dod1212com_s_application2/widgets/custom_icon_button.dart';
import 'package:dod1212com_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class AddQueueScreen extends StatelessWidget {
  AddQueueScreen({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 1.h,
            top: 65.v,
            right: 1.h,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 48.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.outlineGrayF.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 7.v,
                            bottom: 8.v,
                          ),
                          child: Text(
                            "December 2022",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 37.v),
                    _buildCalendarSection(context),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 34.h),
                  child: Text(
                    "Select time".toUpperCase(),
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              SizedBox(
                height: 114.v,
                width: 230.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 113.v,
                        width: 230.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            12.h,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.gray4003f,
                              spreadRadius: 2.h,
                              blurRadius: 2.h,
                              offset: Offset(
                                0,
                                0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildMinuteDesktopSection(
                            context,
                            zero: "12",
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 24.h,
                              top: 48.v,
                              bottom: 43.v,
                            ),
                            child: Text(
                              ":",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: _buildMinuteDesktopSection(
                              context,
                              zero: "00",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 67.v),
              _buildOkSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarSection(BuildContext context) {
    return SizedBox(
      height: 290.v,
      width: 283.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0XFFFFFFFF),
          firstDayOfWeek: 0,
          weekdayLabelTextStyle: TextStyle(
            color: appTheme.gray400,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
          selectedDayTextStyle: TextStyle(
            color: Color(0XFF4200FF),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          disabledDayTextStyle: TextStyle(
            color: theme.colorScheme.onErrorContainer,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          weekdayLabels: ["S", "M", "T", "W", "T", "F", "S"],
          dayBorderRadius: BorderRadius.circular(
            18.h,
          ),
        ),
        value: selectedDatesFromCalendar1,
        onValueChanged: (dates) {},
      ),
    );
  }

  /// Section Widget
  Widget _buildOkSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "OK".toUpperCase(),
              margin: EdgeInsets.only(right: 23.h),
              buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
            ),
          ),
          Expanded(
            child: CustomOutlinedButton(
              text: "CANCEL".toUpperCase(),
              margin: EdgeInsets.only(left: 23.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMinuteDesktopSection(
    BuildContext context, {
    required String zero,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          padding: EdgeInsets.all(6.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
          ),
        ),
        SizedBox(height: 10.v),
        Text(
          zero,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
        SizedBox(height: 9.v),
        CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          padding: EdgeInsets.all(6.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
          ),
        ),
      ],
    );
  }
}
