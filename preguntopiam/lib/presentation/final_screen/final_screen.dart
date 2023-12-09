import 'package:flutter/material.dart';
import 'package:preguntopia/core/app_export.dart';
import 'package:preguntopia/widgets/custom_elevated_button.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({Key? key})
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
                ImageConstant.imgFinal,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 53.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogoinicar,
                  height: 80.v,
                  width: 79.h,
                ),
                SizedBox(height: 30.v),
                Text(
                  "¡Juego Terminado!",
                  style: CustomTextStyles.headlineLargeExtraBold,
                ),
                SizedBox(height: 25.v),
                SizedBox(
                  height: 253.v,
                  width: 262.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 253.v,
                          width: 262.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray300.withOpacity(0.62),
                            borderRadius: BorderRadius.circular(
                              131.h,
                            ),
                            border: Border.all(
                              color: appTheme.blueGray100.withOpacity(0.85),
                              width: 5.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 64.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "286",
                                style: theme.textTheme.displayMedium,
                              ),
                              SizedBox(
                                width: 132.h,
                                child: Text(
                                  "Puntos ganados en este juego",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 34.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 27.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 3.v,
                  ),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Nombre",
                        style: CustomTextStyles.headlineLargeExtraBold_1,
                      ),
                      Text(
                        "Ganador",
                        style: CustomTextStyles.headlineLargeAmber500,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "Vidas Restantes: 0",
                        style: CustomTextStyles.headlineLargeAmber500,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 48.v),
                _buildFourteen(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBrainganador,
            height: 132.v,
            width: 175.h,
          ),
          Column(
            children: [
              CustomElevatedButton(
                height: 55.v,
                width: 170.h,
                text: "Volver a jugar",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle:
                    CustomTextStyles.titleLargeOnPrimaryContainerSemiBold,
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 53.v,
                width: 170.h,
                text: "Elegir Categoria",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle:
                    CustomTextStyles.titleLargeOnPrimaryContainerSemiBold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
