import 'Song.dart';

class Result {
    int songCount;
    List<Song> songs;

    Result({this.songCount, this.songs});

    factory Result.fromJson(Map<String, dynamic> json) {
        return Result(
            songCount: json['songCount'], 
            songs: json['songs'] != null ? (json['songs'] as List).map((i) => Song.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['songCount'] = this.songCount;
        if (this.songs != null) {
            data['songs'] = this.songs.map((v) => v.toJson()).toList();
        }
        return data;
    }
}