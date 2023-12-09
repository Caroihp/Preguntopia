import 'package:flutter/material.dart';
import 'package:preguntopia/core/app_export.dart';
import 'package:preguntopia/widgets/custom_elevated_button.dart';

class PreguntasdeportesScreen extends StatelessWidget {
  const PreguntasdeportesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.blueGray10001,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.blueGray10001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgPreguntashistoria,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTwo(context),
                SizedBox(height: 9.v),
                _buildEight(context),
                Spacer(
                  flex: 35,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 287.h,
                    margin: EdgeInsets.only(right: 57.h),
                    child: Text(
                      "¿Dónde se encuentra \nel río Nilo?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
                Spacer(
                  flex: 64,
                ),
                _buildAsiaButton(context),
                SizedBox(height: 17.v),
                _buildEuropaButton(context),
                SizedBox(height: 17.v),
                _buildAfricaButton(context),
                SizedBox(height: 17.v),
                _buildAmericaButton(context),
                SizedBox(height: 88.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBrainDeportesButton(BuildContext context) {
    return CustomElevatedButton(
      height: 37.v,
      width: 94.h,
      text: "15",
      margin: EdgeInsets.only(
        top: 48.v,
        bottom: 11.v,
      ),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
      buttonTextStyle: CustomTextStyles.titleSmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOrange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBraindeportes63x65,
            height: 63.v,
            width: 65.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 33.v,
            ),
          ),
          _buildBrainDeportesButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Puntuación: 100",
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "Vidas: 5",
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAsiaButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Asia",
      margin: EdgeInsets.only(
        left: 47.h,
        right: 48.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildEuropaButton(BuildContext context) {
    return CustomElevatedButton(
      text: " Europa",
      margin: EdgeInsets.only(
        left: 47.h,
        right: 48.h,
      ),
      buttonTextStyle: theme.textTheme.headlineLarge!,
    );
  }

  /// Section Widget
  Widget _buildAfricaButton(BuildContext context) {
    return CustomElevatedButton(
      text: "África",
      margin: EdgeInsets.only(
        left: 47.h,
        right: 48.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildAmericaButton(BuildContext context) {
    return CustomElevatedButton(
      text: " América",
      margin: EdgeInsets.only(
        left: 47.h,
        right: 48.h,
      ),
    );
  }
}
