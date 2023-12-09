import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineLarge32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
      );
  static get headlineLargeAmber500 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.amber500,
        fontWeight: FontWeight.w800,
      );
  static get headlineLargeBlack => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w900,
      );
  static get headlineLargeExtraBold => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w800,
      );
  static get headlineLargeExtraBold_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );
  // Title text style
  static get titleLargeBluegray300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryContainerBlack =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w900,
      );
  static get titleLargeOnPrimaryContainerSemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w900,
      );
}

extension on TextStyle {
  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }
}
