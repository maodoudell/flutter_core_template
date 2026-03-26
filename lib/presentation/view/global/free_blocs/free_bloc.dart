import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/configurations/app_dependency_injection.dart';
import 'package:flutter_core_template/core/services/repo/app_preference.dart';
import 'package:flutter_core_template/core/utils/print/app_print.dart';
import 'package:flutter_core_template/core/utils/themes/colors/app_color_scheme.dart';
import 'package:flutter_core_template/core/utils/themes/language/language_mode.dart';
import 'package:flutter_core_template/presentation/view/global/free_blocs/free_event.dart';
import 'package:flutter_core_template/presentation/view/global/free_blocs/free_state.dart';

class FreeBloc extends Bloc<FreeEvent, FreeState> {
  AppPreference appPreference = getIt<AppPreference>();
  FreeBloc() : super(FreeState(colorMode: ColorMode.light, languageMode: LanguageMode.khmer)) {
    on<LoadFreeDataEvent>(_emitLoadFreeDataEvent);
    on<OnChangeColorModeEvent>(_emitOnChangeColorModeEvent);
    on<OnChangeLanguageModeEvent>(_emitOnChangeLanguageModeEvent);

    add(LoadFreeDataEvent());
  }

  _emitLoadFreeDataEvent(LoadFreeDataEvent event, emit) async {
    final mode = await appPreference.getColorMode();
    appPrint("get mode from cache ${mode}");
    emit(state.copyWith(colorMode: mode));
  }

  _emitOnChangeColorModeEvent(OnChangeColorModeEvent event, emit) async {
    await appPreference.setColorMode(event.mode);
    if (state.colorMode == ColorMode.light) {
      emit(state.copyWith(colorMode: ColorMode.dark));
    } else {
      emit(state.copyWith(colorMode: ColorMode.light));
    }
  }

  _emitOnChangeLanguageModeEvent(OnChangeLanguageModeEvent event, emit) async {
    // await
  }
}
