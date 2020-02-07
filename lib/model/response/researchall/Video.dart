import 'VideoX.dart';

class Video {
    bool more;
    String moreText;
    List<Object> resourceIds;
    List<VideoX> videos;

    Video({this.more, this.moreText, this.resourceIds, this.videos});

    factory Video.fromJson(Map<String, dynamic> json) {
        return Video(
            more: json['more'], 
            moreText: json['moreText'], 
            //resourceIds: json['resourceIds'] != null ? (json['resourceIds'] as List).map((i) => Object.fromJson(i)).toList() : null,
            videos: json['videos'] != null ? (json['videos'] as List).map((i) => VideoX.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.resourceIds != null) {
            //data['resourceIds'] = this.resourceIds.map((v) => v.toJson()).toList();
        }
        if (this.videos != null) {
            data['videos'] = this.videos.map((v) => v.toJson()).toList();
        }
        return data;
    }
}