import 'package:flutter/material.dart';
import 'package:remind/presentation/styles/sizes.dart';

import '../../domain/services/localization_service.dart';


class FontStyles {
  static fontFamily(BuildContext context) => tr(context).fontFamily;

  static const fontWeightBlack = FontWeight.w900;
  static const fontWeightExtraBold = FontWeight.w800;
  static const fontWeightBold = FontWeight.bold;
  static const fontWeightSemiBold = FontWeight.w600;
  static const fontWeightMedium = FontWeight.w500;
  static const fontWeightNormal = FontWeight.normal;
  static const fontWeightLight = FontWeight.w300;
  static const fontWeightExtraLight = FontWeight.w200;
  static const fontWeightThin = FontWeight.w100;
  static const fontStyleNormal = FontStyle.normal;

  static mapSearchBarFontStyle(BuildContext context) => TextStyle(
    fontSize: Sizes.fontSizes(context)['h4'],
    color: Theme.of(context).textTheme.subtitle1!.color,
    fontFamily: fontFamily(context),
    fontWeight: fontWeightNormal,
    fontStyle: fontStyleNormal,
  );
}
