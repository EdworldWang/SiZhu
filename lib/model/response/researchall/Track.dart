import 'Album.dart';
import 'ArtistX.dart';
import 'BMusic.dart';
import 'HMusic.dart';
import 'LMusic.dart';
import 'MMusic.dart';

class Track {
    Album album;
    List<Object> alias;
    List<ArtistX> artists;
    Object audition;
    BMusic bMusic;
    String commentThreadId;
    String copyFrom;
    int copyright;
    int copyrightId;
    Object crbt;
    int dayPlays;
    String disc;
    int duration;
    int fee;
    int ftype;
    HMusic hMusic;
    int hearTime;
    int id;
    LMusic lMusic;
    MMusic mMusic;
    Object mp3Url;
    int mvid;
    String name;
    int no;
    int playedNum;
    int popularity;
    int position;
    String ringtone;
    Object rtUrl;
    List<Object> rtUrls;
    int rtype;
    Object rurl;
    int score;
    bool starred;
    int starredNum;
    int status;

    Track({this.album, this.alias, this.artists, this.audition, this.bMusic, this.commentThreadId, this.copyFrom, this.copyright, this.copyrightId, this.crbt, this.dayPlays, this.disc, this.duration, this.fee, this.ftype, this.hMusic, this.hearTime, this.id, this.lMusic, this.mMusic, this.mp3Url, this.mvid, this.name, this.no, this.playedNum, this.popularity, this.position, this.ringtone, this.rtUrl, this.rtUrls, this.rtype, this.rurl, this.score, this.starred, this.starredNum, this.status});

    factory Track.fromJson(Map<String, dynamic> json) {
        return Track(
            album: json['album'] != null ? Album.fromJson(json['album']) : null, 
            //alias: json['alias'] != null ? (json['alias'] as List).map((i) => Object.fromJson(i)).toList() : null,
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => ArtistX.fromJson(i)).toList() : null, 
            //audition: json['audition'] != null ? Object.fromJson(json['audition']) : null,
            bMusic: json['bMusic'] != null ? BMusic.fromJson(json['bMusic']) : null, 
            commentThreadId: json['commentThreadId'], 
            copyFrom: json['copyFrom'], 
            copyright: json['copyright'], 
            copyrightId: json['copyrightId'], 
            //crbt: json['crbt'] != null ? Object.fromJson(json['crbt']) : null,
            dayPlays: json['dayPlays'], 
            disc: json['disc'], 
            duration: json['duration'], 
            fee: json['fee'], 
            ftype: json['ftype'], 
            hMusic: json['hMusic'] != null ? HMusic.fromJson(json['hMusic']) : null, 
            hearTime: json['hearTime'], 
            id: json['id'], 
            lMusic: json['lMusic'] != null ? LMusic.fromJson(json['lMusic']) : null, 
            mMusic: json['mMusic'] != null ? MMusic.fromJson(json['mMusic']) : null, 
            //mp3Url: json['mp3Url'] != null ? Object.fromJson(json['mp3Url']) : null,
            mvid: json['mvid'], 
            name: json['name'], 
            no: json['no'], 
            playedNum: json['playedNum'], 
            popularity: json['popularity'], 
            position: json['position'], 
            ringtone: json['ringtone'], 
            //rtUrl: json['rtUrl'] != null ? Object.fromJson(json['rtUrl']) : null,
            //rtUrls: json['rtUrls'] != null ? (json['rtUrls'] as List).map((i) => Object.fromJson(i)).toList() : null,
            rtype: json['rtype'], 
            //rurl: json['rurl'] != null ? Object.fromJson(json['rurl']) : null,
            score: json['score'], 
            starred: json['starred'], 
            starredNum: json['starredNum'], 
            status: json['status'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['commentThreadId'] = this.commentThreadId;
        data['copyFrom'] = this.copyFrom;
        data['copyright'] = this.copyright;
        data['copyrightId'] = this.copyrightId;
        data['dayPlays'] = this.dayPlays;
        data['disc'] = this.disc;
        data['duration'] = this.duration;
        data['fee'] = this.fee;
        data['ftype'] = this.ftype;
        data['hearTime'] = this.hearTime;
        data['id'] = this.id;
        data['mvid'] = this.mvid;
        data['name'] = this.name;
        data['no'] = this.no;
        data['playedNum'] = this.playedNum;
        data['popularity'] = this.popularity;
        data['position'] = this.position;
        data['ringtone'] = this.ringtone;
        data['rtype'] = this.rtype;
        data['score'] = this.score;
        data['starred'] = this.starred;
        data['starredNum'] = this.starredNum;
        data['status'] = this.status;
        if (this.album != null) {
            data['album'] = this.album.toJson();
        }
        if (this.alias != null) {
            //data['alias'] = this.alias.map((v) => v.toJson()).toList();
        }
        if (this.artists != null) {
            data['artists'] = this.artists.map((v) => v.toJson()).toList();
        }
        if (this.audition != null) {
            //data['audition'] = this.audition.toJson();
        }
        if (this.bMusic != null) {
            data['bMusic'] = this.bMusic.toJson();
        }
        if (this.crbt != null) {
            //data['crbt'] = this.crbt.toJson();
        }
        if (this.hMusic != null) {
            data['hMusic'] = this.hMusic.toJson();
        }
        if (this.lMusic != null) {
            data['lMusic'] = this.lMusic.toJson();
        }
        if (this.mMusic != null) {
            data['mMusic'] = this.mMusic.toJson();
        }
        if (this.mp3Url != null) {
            //data['mp3Url'] = this.mp3Url.toJson();
        }
        if (this.rtUrl != null) {
            //data['rtUrl'] = this.rtUrl.toJson();
        }
        if (this.rtUrls != null) {
            //data['rtUrls'] = this.rtUrls.map((v) => v.toJson()).toList();
        }
        if (this.rurl != null) {
            //data['rurl'] = this.rurl.toJson();
        }
        return data;
    }
}