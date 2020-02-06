/*
* @Description: 搜索接口的参数模型
* @Author: Edward
* @Date: 2020-02-06
*/
class SearchModel {
  static const SEARCH_SONG = 1;
  static const SEARCH_ALBUM = 10;
  static const SEARCH_ARTIST = 100;
  static const SEARCH_SONG_LIST = 1000;
  static const SEARCH_USER = 1002;
  static const SEARCH_MV = 1004;
  static const SEARCH_LYRIC = 1006;
  static const SEARCH_RADIO = 1009;
  static const SEARCH_VIDEO = 1014;
  static const SEARCH_ALL = 1018;

  final String keywords;
  final String limit;
  final String offset;
  final String type;

  SearchModel({
    this.keywords,
    this.limit,
    this.offset,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'keywords': this.keywords,
      'limit': this.limit,
      'offset': this.offset,
      'type': this.type,
    };
  }

  factory SearchModel.fromMap(Map map) {
    return new SearchModel(
      keywords: map['keywords'] as String,
      limit: map['limit'] as String,
      offset: map['offset'] as String,
      type: map['type'] as String,
    );
  }

  @override
  String toString() {
    return 'SearchModel{keywords: $keywords, limit: $limit, offset: $offset, type: $type}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SearchModel &&
              runtimeType == other.runtimeType &&
              keywords == other.keywords &&
              limit == other.limit &&
              offset == other.offset &&
              type == other.type;

  @override
  int get hashCode =>
      keywords.hashCode ^
      limit.hashCode ^
      offset.hashCode ^
      type.hashCode;



}
