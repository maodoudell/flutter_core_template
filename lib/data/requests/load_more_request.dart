import 'package:flutter_core_template/core/utils/typedefs.dart';

class LoadMoreRequest {
  final String? query;
  final String? search;
  final int? offset;
  final int limit;
  final bool load;
  final bool end;
  LoadMoreRequest({
    this.query,
    this.search,
    this.offset,
    required this.limit,
    this.load = false,
    this.end = false,
  });

  DataMap toJson() {
    return <String, dynamic>{
      if (query != null) 'query': query,
      'search': search,
      'offset': offset ?? 0,
      'limit': limit,
    };
  }

  LoadMoreRequest copyWith({
    String? query,
    String? search,
    int? offset,
    int? limit,
    bool? load,
    bool? end,
  }) {
    return LoadMoreRequest(
        query: query ?? this.query,
        search: search ?? this.search,
        offset: offset ?? this.offset,
        limit: limit ?? this.limit,
        end: end ?? this.end,
        load: load ?? this.load);
  }

  LoadMoreRequest offsetMore(int all, int add) {
    final hasMore = add >= limit;
    return copyWith(offset: all, load: !hasMore, end: !hasMore);
  }

  LoadMoreRequest resetLoad() {
    return copyWith(load: false, end: false);
  }
}
