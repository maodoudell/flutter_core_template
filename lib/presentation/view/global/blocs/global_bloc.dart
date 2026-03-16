import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/presentation/view/global/blocs/global_event.dart';
import 'package:flutter_core_template/presentation/view/global/blocs/global_state.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(GlobalState()) {
    on<LoadGlobalDataEvent>(_emitLoadGlobalDataEvent);
  }
  _emitLoadGlobalDataEvent(LoadGlobalDataEvent event, emit) {}
}
