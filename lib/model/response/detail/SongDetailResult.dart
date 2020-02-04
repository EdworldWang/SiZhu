import 'Privilege.dart';
import 'Song.dart';

class SongDetailResult {
    int code;
    List<Privilege> privileges;
    List<Song> songs;

    SongDetailResult({this.code, this.privileges, this.songs});

    factory SongDetailResult.fromJson(Map<String, dynamic> json) {
        return SongDetailResult(
            code: json['code'], 
            privileges: json['privileges'] != null ? (json['privileges'] as List).map((i) => Privilege.fromJson(i)).toList() : null, 
            songs: json['songs'] != null ? (json['songs'] as List).map((i) => Song.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        if (this.privileges != null) {
            data['privileges'] = this.privileges.map((v) => v.toJson()).toList();
        }
        if (this.songs != null) {
            data['songs'] = this.songs.map((v) => v.toJson()).toList();
        }
        return data;
    }
}