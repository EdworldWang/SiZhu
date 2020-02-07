import 'SongX.dart';

class Song {
    bool more;
    String moreText;
    List<int> resourceIds;
    List<SongX> songs;

    Song({this.more, this.moreText, this.resourceIds, this.songs});

    factory Song.fromJson(Map<String, dynamic> json) {
        return Song(
            more: json['more'], 
            moreText: json['moreText'], 
            resourceIds: json['resourceIds'] != null ? new List<int>.from(json['resourceIds']) : null, 
            songs: json['songs'] != null ? (json['songs'] as List).map((i) => SongX.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.resourceIds != null) {
            data['resourceIds'] = this.resourceIds;
        }
        if (this.songs != null) {
            data['songs'] = this.songs.map((v) => v.toJson()).toList();
        }
        return data;
    }
}