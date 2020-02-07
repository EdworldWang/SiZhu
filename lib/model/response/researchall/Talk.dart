import 'TalkX.dart';

class Talk {
    bool more;
    String moreText;
    List<int> resourceIds;
    List<TalkX> talks;

    Talk({this.more, this.moreText, this.resourceIds, this.talks});

    factory Talk.fromJson(Map<String, dynamic> json) {
        return Talk(
            more: json['more'], 
            moreText: json['moreText'], 
            resourceIds: json['resourceIds'] != null ? new List<int>.from(json['resourceIds']) : null, 
            talks: json['talks'] != null ? (json['talks'] as List).map((i) => TalkX.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.resourceIds != null) {
            data['resourceIds'] = this.resourceIds;
        }
        if (this.talks != null) {
            data['talks'] = this.talks.map((v) => v.toJson()).toList();
        }
        return data;
    }
}