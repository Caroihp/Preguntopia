import 'package:flutter/material.dart';
import 'package:preguntopia/core/app_export.dart';

class CategoriasScreen extends StatelessWidget {
  const CategoriasScreen({Key? key})
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
                ImageConstant.imgCategorias,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 39.h,
              vertical: 33.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 23.v),
                Text(
                  "CATEGORÍAS",
                  style: CustomTextStyles.headlineLargeExtraBold,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Seleccione solo una",
                  style: CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
                _buildCategoryItem(
                  context,
                  imagePath: ImageConstant.imgBraintodas,
                  title: "TODAS LAS CATEGORÍAS",
                  height: 184.v,
                  width: 213.h,
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    right: 21.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCategoryItem(
                        context,
                        imagePath: ImageConstant.imgBrainartes,
                        title: "ARTE",
                        height: 108.v,
                        width: 97.h,
                      ),
                      _buildCategoryItem(
                        context,
                        imagePath: ImageConstant.imgBrainciencias,
                        title: "CIENCIAS",
                        height: 108.v,
                        width: 97.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCategoryItem(
                        context,
                        imagePath: ImageConstant.imgBraindeportes,
                        title: "DEPORTES",
                        height: 108.v,
                        width: 112.h,
                      ),
                      _buildCategoryItem(
                        context,
                        imagePath: ImageConstant.imgBrainentretenciN,
                        title: "ENTRETENCIÓN",
                        height: 108.v,
                        width: 112.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      right: 28.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildCategoryItem(
                          context,
                          imagePath: ImageConstant.imgBraingeografA,
                          title: "GEOGRAFÍA",
                          height: 108.v,
                          width: 100.h,
                        ),
                        _buildCategoryItem(
                          context,
                          imagePath: ImageConstant.imgBrainhistoria,
                          title: "HISTORIA",
                          height: 108.v,
                          width: 99.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Función para construir cada item de categoría como un botón
  Widget _buildCategoryItem(
    BuildContext context, {
    required String imagePath,
    required String title,
    required double height,
    required double width,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.iniciarJuegoScreen);
      },
      child: Column(
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: height,
            width: width,
          ),
          Text(
            title,
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}

