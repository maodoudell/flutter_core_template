import 'package:flutter/cupertino.dart';
import 'package:flutter_core_template/core/util/l10n/app_localizations.dart';
import 'package:flutter_core_template/core/util/route/app_navigator.dart';

const double s1 = 1;
const double s2 = 2;
const double s4 = 4;
const double s5 = 5;
const double s7 = 7;
const double s8 = 8;
const double s10 = 10;

const double s3 = 3;
const double s6 = 6;
const double s9 = 9;

const double s15 = 15;
const double s20 = 20;
const double s25 = 25;
const double s30 = 30;
const double s35 = 35;
const double s40 = 40;
const double s45 = 45;
const double s50 = 50;

const spacer = Spacer();

SizedBox space(double size) => SizedBox(
      width: size,
      height: size,
    );
AppLocalizations get appText => AppLocalizations.of(AppNavigator.context)!;

EdgeInsets edgeInsetsZero = EdgeInsets.zero;
