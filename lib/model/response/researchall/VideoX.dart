import 'CreatorX.dart';

class VideoX {
    String alg;
    Object aliaName;
    String coverUrl;
    List<CreatorX> creator;
    int durationms;
    List<Object> markTypes;
    int playTime;
    String title;
    Object transName;
    int type;
    String vid;

    VideoX({this.alg, this.aliaName, this.coverUrl, this.creator, this.durationms, this.markTypes, this.playTime, this.title, this.transName, this.type, this.vid});

    factory VideoX.fromJson(Map<String, dynamic> json) {
        return VideoX(
            alg: json['alg'], 
            //aliaName: json['aliaName'] != null ? Object.fromJson(json['aliaName']) : null,
            coverUrl: json['coverUrl'], 
            creator: json['creator'] != null ? (json['creator'] as List).map((i) => CreatorX.fromJson(i)).toList() : null, 
            durationms: json['durationms'], 
            //markTypes: json['markTypes'] != null ? (json['markTypes'] as List).map((i) => Object.fromJson(i)).toList() : null,
            playTime: json['playTime'], 
            title: json['title'], 
            //transName: json['transName'] != null ? Object.fromJson(json['transName']) : null,
            type: json['type'], 
            vid: json['vid'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['coverUrl'] = this.coverUrl;
        data['durationms'] = this.durationms;
        data['playTime'] = this.playTime;
        data['title'] = this.title;
        data['type'] = this.type;
        data['vid'] = this.vid;
        if (this.aliaName != null) {
            //data['aliaName'] = this.aliaName.toJson();
        }
        if (this.creator != null) {
            data['creator'] = this.creator.map((v) => v.toJson()).toList();
        }
        if (this.markTypes != null) {
            //data['markTypes'] = this.markTypes.map((v) => v.toJson()).toList();
        }
        if (this.transName != null) {
            //data['transName'] = this.transName.toJson();
        }
        return data;
    }
}