import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/configurations/app_dependency_injection.dart';
import 'package:flutter_core_template/core/services/repo/app_preference.dart';
import 'package:flutter_core_template/core/utils/global/app_state.dart';
import 'package:flutter_core_template/core/utils/print/app_print.dart';
import 'package:flutter_core_template/presentation/view/auth/setting/blocs/setting_event.dart';
import 'package:flutter_core_template/presentation/view/auth/setting/blocs/setting_state.dart';
import 'package:flutter_core_template/presentation/view/global/free_blocs/free_event.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState(appState: AppState())) {
    final AppPreference appPreferences = getIt<AppPreference>();
    on<LoadSettingDataEvent>(_emitLoadSettingDataEvent);

    // add(LoadSettingDataEvent());
  }

  _emitLoadSettingDataEvent(LoadSettingDataEvent event, emit) {
    appPrint("LoadSettingDataEvent is working");
  }
}
