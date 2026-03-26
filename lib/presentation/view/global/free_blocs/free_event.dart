import 'package:flutter_core_template/core/utils/themes/colors/app_color_scheme.dart';
import 'package:flutter_core_template/core/utils/themes/language/language_mode.dart';

abstract class FreeEvent {}

class LoadFreeDataEvent extends FreeEvent {}

class OnChangeColorModeEvent extends FreeEvent {
  ColorMode mode;
  OnChangeColorModeEvent(this.mode);
}

class OnChangeLanguageModeEvent extends FreeEvent {
  LanguageMode mode;
  OnChangeLanguageModeEvent(this.mode);
}
