import 'Album.dart';
import 'Artist.dart';

class Song {
    Album album;
    List<Object> alias;
    List<Artist> artists;
    int copyrightId;
    int duration;
    int fee;
    int ftype;
    int id;
    int mark;
    int mvid;
    String name;
    Object rUrl;
    int rtype;
    int status;

    Song({this.album, this.alias, this.artists, this.copyrightId, this.duration, this.fee, this.ftype, this.id, this.mark, this.mvid, this.name, this.rUrl, this.rtype, this.status});

    factory Song.fromJson(Map<String, dynamic> json) {
        return Song(
            album: json['album'] != null ? Album.fromJson(json['album']) : null, 
            //alias: json['alias'] != null ? (json['alias'] as List).map((i) => Object.fromJson(i)).toList() : null,
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => Artist.fromJson(i)).toList() : null, 
            copyrightId: json['copyrightId'], 
            duration: json['duration'], 
            fee: json['fee'], 
            ftype: json['ftype'], 
            id: json['id'], 
            mark: json['mark'], 
            mvid: json['mvid'], 
            name: json['name'], 
            //rUrl: json['rUrl'] != null ? Object.fromJson(json['rUrl']) : null,
            rtype: json['rtype'], 
            status: json['status'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['copyrightId'] = this.copyrightId;
        data['duration'] = this.duration;
        data['fee'] = this.fee;
        data['ftype'] = this.ftype;
        data['id'] = this.id;
        data['mark'] = this.mark;
        data['mvid'] = this.mvid;
        data['name'] = this.name;
        data['rtype'] = this.rtype;
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
        if (this.rUrl != null) {
            //data['rUrl'] = this.rUrl.toJson();
        }
        return data;
    }
}