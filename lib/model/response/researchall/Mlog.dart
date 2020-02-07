import 'MlogX.dart';

class Mlog {
    List<MlogX> mlogs;
    bool more;
    String moreText;
    List<Object> resourceIds;

    Mlog({this.mlogs, this.more, this.moreText, this.resourceIds});

    factory Mlog.fromJson(Map<String, dynamic> json) {
        return Mlog(
            mlogs: json['mlogs'] != null ? (json['mlogs'] as List).map((i) => MlogX.fromJson(i)).toList() : null, 
            more: json['more'], 
            moreText: json['moreText'], 
            //resourceIds: json['resourceIds'] != null ? (json['resourceIds'] as List).map((i) => Object.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.mlogs != null) {
            data['mlogs'] = this.mlogs.map((v) => v.toJson()).toList();
        }
        if (this.resourceIds != null) {
            //data['resourceIds'] = this.resourceIds.map((v) => v.toJson()).toList();
        }
        return data;
    }
}