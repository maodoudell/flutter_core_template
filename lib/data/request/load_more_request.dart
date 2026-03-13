// import 'package:flutter_core_template/core/util/global/typedefs.dart';
//
// class LoadMoreRequest {
//   final String? query;
//   final String? search;
//   final int? offset;
//   final int limit;
//   final bool load;
//   final bool end;
//   LoadMoreRequest({
//     this.query,
//     this.search,
//     this.offset,
//     required this.limit,
//     this.load = false,
//     this.end = false,
//   });
//
//   DataMap toJson() {
//     return <String, dynamic>{
//       if (query != null) 'query': query,
//       'search': search,
//       'offset': offset ?? 0,
//       'limit': limit,
//     };
//   }
//
//   LoadMoreRequest copyWith({
//     String? query,
//     String? search,
//     int? offset,
//     int? limit,
//     bool? load,
//     bool? end,
//   }) {
//     return LoadMoreRequest(
//         query: query ?? this.query,
//         search: search ?? this.search,
//         offset: offset ?? this.offset,
//         limit: limit ?? this.limit,
//         end: end ?? this.end,
//         load: load ?? this.load);
//   }
//
//   LoadMoreRequest offsetMore(int all, int add) {
//     final hasMore = add >= limit;
//     return copyWith(offset: all, load: !hasMore, end: !hasMore);
//   }
//
//   LoadMoreRequest resetLoad() {
//     return copyWith(load: false, end: false);
//   }
// }

class PaginationRequest {
  final int page;
  final int size;
  final bool isLoading;
  final bool end;
  final bool hasMore;
  final String? q;
  PaginationRequest({this.page = 0, this.size = 10, this.end = false, this.isLoading = false, this.hasMore = true, this.q});

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'size': size,
      'isLoading': isLoading,
      'end': end,
      'hasMore': hasMore,
      'q': q,
    };
  }

  factory PaginationRequest.fromJson(Map<String, dynamic> map) {
    return PaginationRequest(
      page: map['page'] as int,
      size: map['size'] as int,
      isLoading: map['isLoading'] as bool,
      end: map['end'] as bool,
      hasMore: map['hasMore'] as bool,
      q: map['q'] as String?,
    );
  }

  PaginationRequest copyWith({
    int? page,
    int? size,
    bool? isLoading,
    bool? end,
    bool? hasMore,
    String? q,
  }) {
    return PaginationRequest(
      page: page ?? this.page,
      size: size ?? this.size,
      isLoading: isLoading ?? this.isLoading,
      end: end ?? this.end,
      hasMore: hasMore ?? this.hasMore,
      q: q ?? this.q,
    );
  }

  PaginationRequest reset() {
    return copyWith(end: false, isLoading: false, hasMore: true);
  }

  increase() {
    return copyWith(page: page + 1);
  }
}
