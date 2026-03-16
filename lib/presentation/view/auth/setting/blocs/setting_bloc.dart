import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/util/global/app_state.dart';
import 'package:flutter_core_template/core/util/print/app_print.dart';
import 'package:flutter_core_template/presentation/view/auth/setting/blocs/setting_event.dart';
import 'package:flutter_core_template/presentation/view/auth/setting/blocs/setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState(appState: AppState())) {
    on<LoadSettingDataEvent>(_emitLoadSettingDataEvent);

    // add(LoadSettingDataEvent());
  }

  _emitLoadSettingDataEvent(LoadSettingDataEvent event, emit) {
    appPrint("LoadSettingDataEvent is working");
  }
}
