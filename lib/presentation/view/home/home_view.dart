import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/util/print/app_print.dart';
import 'package:flutter_core_template/presentation/view/base/base_view.dart';
import 'package:flutter_core_template/presentation/view/home/blocs/home_bloc.dart';
import 'package:flutter_core_template/presentation/view/home/blocs/home_event.dart';
import 'package:flutter_core_template/presentation/view/home/blocs/home_state.dart';

class HomeView extends BaseView {
  const HomeView({super.key});
  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends BaseViewState<HomeView> with BaseViewMixin {
  ScrollController _scrollController = ScrollController();
  @override
  String appBarTitle() {
    return "Home View";
  }

  @override
  void onClickBackButton() {
    // TODO: implement onClickBackButton
  }

  @override
  void onClickCart() {
    // TODO: implement onClickCart
  }

  @override
  bool get isBackButton => false;

  @override
  void initState() {
    _scrollController.addListener(
      () {
        if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
          appPrint("load more");
          context.read<HomeBloc>().add(GetProductEvent(isLoadMore: true));
        }
      },
    );
    super.initState();
  }

  @override
  Widget body() {
    return BlocBuilder<HomeBloc, HomeSate>(
      builder: (context, state) {
        return state.appState.buildWidget(
          child: RefreshIndicator(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: state.appState.data?.length,
                    itemBuilder: (context, index) {
                      var model = state.appState.data![index];
                      return ListTile(
                        leading: Text("This is item ${index + 1}"),
                        title: Text("${model.id} : ${model.description}"),
                      );
                    },
                  ),
                ),
                if (state.appState.request?.isLoading == true) Center(child: CircularProgressIndicator()),
              ],
            ),
            onRefresh: () async {
              context.read<HomeBloc>().onRefresh();
            },
          ),
        );
      },
    );
  }
}
