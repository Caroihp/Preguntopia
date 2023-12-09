import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:preguntopia/core/app_export.dart';
import 'package:preguntopia/widgets/custom_elevated_button.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({Key? key})
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
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgBienvenida,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildWelcomeSection(context),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgBraininicio,
                  height: 200.v,
                  width: 206.h,
                  radius: BorderRadius.circular(
                    72.h,
                  ),
                ),
                SizedBox(height: 14.v),
                CustomElevatedButton(
                  height: 50.v,
                  text: "Juega Ahora",
                  margin: EdgeInsets.symmetric(horizontal: 39.h),
                  buttonStyle: CustomButtonStyles.fillOnPrimary,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.categoriasScreen);
                  },
                ),
                SizedBox(height: 72.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 86.h,
        vertical: 54.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup3,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text(
            "PREGUNTOPÍA",
            style: CustomTextStyles.headlineLargeBlack,
          ),
          SizedBox(height: 29.v),
          Container(
            width: 247.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Text(
              "¡Prepárate para la aventura intelectual de tu vida!",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 29.v),
        ],
      ),
    );
  }
}
