import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/presentation/view/auth/setting/blocs/setting_bloc.dart';
import 'package:flutter_core_template/presentation/view/auth/setting/blocs/setting_event.dart';
import 'package:flutter_core_template/presentation/view/auth/setting/blocs/setting_state.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return SettingBloc()..add(LoadSettingDataEvent());
      },
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Setting"),
            ),
          );
        },
      ),
    );
  }
}
