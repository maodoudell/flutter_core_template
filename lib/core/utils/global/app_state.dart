import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_core_template/data/requests/load_more_request.dart';

enum AppResponseState { initial,loading ,empty, completed, error }

enum AppEnumPosition { pop, bottom, full }

class AppState<T>{
  final T? data;
  final VoidCallback? onTap;
  final String? message;
  final LoadMoreRequest? request;
  final AppResponseState state;

  AppState({this.data, this.onTap, this.message, this.request, this.state = AppResponseState.initial});

  AppState<T> copyWith({
    T? data,
    AppResponseState? state,
    LoadMoreRequest? request,
    String? message,
    VoidCallback? onTap,
    Widget? placeholder,
  }) {
    return AppState<T>(
      data: data ?? this.data,
      state: state ?? this.state,
      request: request ?? this.request,
      message: message ?? this.message,
      onTap: onTap ?? this.onTap,
    );
  }

  Widget buildWidget({required Widget child,Widget? placeHolder,Color? bgColor}){
    if(state == AppResponseState.initial){
      return const Scaffold(body: Center(child: Text("Initial")),);
    }else if(state == AppResponseState.loading){
      return const Scaffold(body: Center(child: CircularProgressIndicator()),);
    }else if(state == AppResponseState.empty){
      return const Scaffold(body: Center(child: Text("Empty")),);
    }else if(state == AppResponseState.error){
      return const Scaffold(body: Center(child: Text("Error")),);
    }
    // else if(state == AppResponseState.completed){
    //
    // }
    return Scaffold(
      backgroundColor: bgColor,
      body: child,
    );
  }

  AppState<T> loading(){
    return copyWith(state: AppResponseState.loading,);
  }
  AppState<T> empty(){
    return copyWith(state: AppResponseState.empty,);
  }
  AppState<T> completed({T? data,LoadMoreRequest? request}){
    return copyWith(data: data,state: AppResponseState.completed,request: request);
  }
  AppState<T> error(String message,{required VoidCallback onTap}){
    return copyWith(data: data,state: AppResponseState.error,onTap: onTap);
  }

}
