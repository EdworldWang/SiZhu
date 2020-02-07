import 'ShareCover.dart';
import 'ShowCover.dart';

class TalkX {
    String alg;
    int follows;
    bool hasTag;
    int mlogCount;
    int participations;
    ShareCover shareCover;
    ShowCover showCover;
    int showParticipations;
    int status;
    String talkDes;
    int talkId;
    String talkName;
    Object time;

    TalkX({this.alg, this.follows, this.hasTag, this.mlogCount, this.participations, this.shareCover, this.showCover, this.showParticipations, this.status, this.talkDes, this.talkId, this.talkName, this.time});

    factory TalkX.fromJson(Map<String, dynamic> json) {
        return TalkX(
            alg: json['alg'], 
            follows: json['follows'], 
            hasTag: json['hasTag'], 
            mlogCount: json['mlogCount'], 
            participations: json['participations'], 
            shareCover: json['shareCover'] != null ? ShareCover.fromJson(json['shareCover']) : null, 
            showCover: json['showCover'] != null ? ShowCover.fromJson(json['showCover']) : null, 
            showParticipations: json['showParticipations'], 
            status: json['status'], 
            talkDes: json['talkDes'], 
            talkId: json['talkId'], 
            talkName: json['talkName'], 
            //time: json['time'] != null ? Object.fromJson(json['time']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['follows'] = this.follows;
        data['hasTag'] = this.hasTag;
        data['mlogCount'] = this.mlogCount;
        data['participations'] = this.participations;
        data['showParticipations'] = this.showParticipations;
        data['status'] = this.status;
        data['talkDes'] = this.talkDes;
        data['talkId'] = this.talkId;
        data['talkName'] = this.talkName;
        if (this.shareCover != null) {
            data['shareCover'] = this.shareCover.toJson();
        }
        if (this.showCover != null) {
            data['showCover'] = this.showCover.toJson();
        }
        if (this.time != null) {
            //data['time'] = this.time.toJson();
        }
        return data;
    }
}