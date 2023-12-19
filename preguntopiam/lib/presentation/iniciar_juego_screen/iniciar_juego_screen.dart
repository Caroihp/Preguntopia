import 'package:flutter/material.dart';
import 'package:preguntopia/core/app_export.dart';
import 'package:preguntopia/widgets/custom_elevated_button.dart';
import 'package:preguntopia/widgets/custom_text_form_field.dart';


class IniciarJuegoScreen extends StatefulWidget {
  IniciarJuegoScreen({Key? key})
      : super(
          key: key,
        );
  @override
  _IniciarJuegoScreenState createState() => _IniciarJuegoScreenState();
}
class _IniciarJuegoScreenState extends State<IniciarJuegoScreen> {
  TextEditingController enterNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgCategorias,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 39.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogoinicar,
                  height: 80.v,
                  width: 79.h,
                ),
                SizedBox(height: 7.v),
                Text(
                  "PREGUNTOPÍA",
                  style: CustomTextStyles.titleLargeOnPrimaryContainerBlack,
                ),
                Spacer(
                  flex: 50,
                ),
                Text(
                  "¿Cuál es tu nombre?",
                  style: CustomTextStyles.headlineLarge32,
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 64.h),
                  child: CustomTextFormField(
                    controller: enterNameController,
                    hintText: "Ingresa tu nombre",
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(height: 26.v),
                CustomElevatedButton(
                  height: 50.v,
                  width: 162.h,
                  text: "Iniciar Juego",
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainerSemiBold,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.preguntascienciasScreen);
                  },
                ),
                SizedBox(height: 85.v),
                CustomImageView(
                  imagePath: ImageConstant.imgBraininicar,
                  height: 229.v,
                  width: 255.h,
                ),
                Spacer(
                  flex: 49,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    enterNameController.dispose();
    super.dispose();
  }
}
