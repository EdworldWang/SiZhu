import 'Album.dart';
import 'ArtistX.dart';
import 'DjRadio.dart';
import 'Mlog.dart';
import 'PlayList.dart';
import 'SimQuery.dart';
import 'Song.dart';
import 'Talk.dart';
import 'User.dart';
import 'Video.dart';

class Result {
    Album album;
    ArtistX artist;
    int code;
    DjRadio djRadio;
    Mlog mlog;
    List<String> order;
    PlayList playList;
    List<Object> rec_query;
    Object rec_type;
    SimQuery sim_query;
    Song song;
    Talk talk;
    User user;
    Video video;

    Result({this.album, this.artist, this.code, this.djRadio, this.mlog, this.order, this.playList, this.rec_query, this.rec_type, this.sim_query, this.song, this.talk, this.user, this.video});

    factory Result.fromJson(Map<String, dynamic> json) {
        return Result(
            album: json['album'] != null ? Album.fromJson(json['album']) : null, 
            artist: json['artist'] != null ? ArtistX.fromJson(json['artist']) : null, 
            code: json['code'], 
            djRadio: json['djRadio'] != null ? DjRadio.fromJson(json['djRadio']) : null, 
            mlog: json['mlog'] != null ? Mlog.fromJson(json['mlog']) : null, 
            order: json['order'] != null ? new List<String>.from(json['order']) : null, 
            playList: json['playList'] != null ? PlayList.fromJson(json['playList']) : null, 
            //rec_query: json['rec_query'] != null ? (json['rec_query'] as List).map((i) => Object.fromJson(i)).toList() : null,
            //rec_type: json['rec_type'] != null ? Object.fromJson(json['rec_type']) : null,
            sim_query: json['sim_query'] != null ? SimQuery.fromJson(json['sim_query']) : null, 
            song: json['song'] != null ? Song.fromJson(json['song']) : null, 
            talk: json['talk'] != null ? Talk.fromJson(json['talk']) : null, 
            user: json['user'] != null ? User.fromJson(json['user']) : null, 
            video: json['video'] != null ? Video.fromJson(json['video']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        if (this.album != null) {
            data['album'] = this.album.toJson();
        }
        if (this.artist != null) {
            data['artist'] = this.artist.toJson();
        }
        if (this.djRadio != null) {
            data['djRadio'] = this.djRadio.toJson();
        }
        if (this.mlog != null) {
            data['mlog'] = this.mlog.toJson();
        }
        if (this.order != null) {
            data['order'] = this.order;
        }
        if (this.playList != null) {
            data['playList'] = this.playList.toJson();
        }
        if (this.rec_query != null) {
            //data['rec_query'] = this.rec_query.map((v) => v.toJson()).toList();
        }
        if (this.rec_type != null) {
            //data['rec_type'] = this.rec_type.toJson();
        }
        if (this.sim_query != null) {
            data['sim_query'] = this.sim_query.toJson();
        }
        if (this.song != null) {
            data['song'] = this.song.toJson();
        }
        if (this.talk != null) {
            data['talk'] = this.talk.toJson();
        }
        if (this.user != null) {
            data['user'] = this.user.toJson();
        }
        if (this.video != null) {
            data['video'] = this.video.toJson();
        }
        return data;
    }
}