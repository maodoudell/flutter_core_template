import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/util/global/common.dart';
import 'package:flutter_core_template/core/util/route/app_navigator.dart';
import 'package:flutter_core_template/core/util/route/app_route_generator.dart';
import 'package:flutter_core_template/core/util/themes/color/app_color.dart';
import 'package:flutter_core_template/core/util/themes/styles/app_style.dart';
import 'package:flutter_core_template/presentation/conponent/button/long_button.dart';
import 'package:flutter_core_template/presentation/conponent/button/tap_animation.dart';
import 'package:flutter_core_template/presentation/conponent/textformfield/text_input.dart';
import 'package:flutter_core_template/presentation/view/auth/login/blocs/bloc.dart';
import 'package:flutter_core_template/presentation/view/auth/login/blocs/login_state.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return state.appState.buildWidget(
          bgColor: appColor.primary,
          child: Scaffold(
            appBar: AppBar(
              title: Text(""),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.all(15),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(),
                    _header(),
                    TextInput(
                      hintText: 'Email',
                      controller: TextEditingController(),
                      margin: EdgeInsets.only(top: 20),
                    ),
                    TextInput(
                      hintText: 'Password',
                      controller: TextEditingController(),
                      margin: EdgeInsets.only(top: 20),
                    ),
                    space(s25),
                    TapAnimation(
                      child: LongButton(
                        onTap: null,
                        text: "Submit",
                      ),
                      onTap: () {
                        // Toast.pop(text: "sdsf", state: EnumToast.SUCCESS);
                        // context.read<LoginBloc>().add(SubmitLoginEvent());

                        AppNavigator.pushName(AppRoute.setting);

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => MatchingView(),
                        //     ));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _header() {
  return Column(
    children: [
      Text("Sign in", style: appStyle.titleLarge),
      space(s10),
      Text("Happy to see you again, Sign in to your account"),
    ],
  );
}
