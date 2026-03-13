abstract class HomeEvent {}

class LoadHomeDataEvent extends HomeEvent {}

class GetProductEvent extends HomeEvent {
  bool isRefresh;
  bool isLoadMore;

  GetProductEvent({this.isRefresh = false, this.isLoadMore = false});
}
