import 'ArtistX.dart';

class Album {
    ArtistX artist;
    int copyrightId;
    int id;
    int mark;
    String name;
    int picId;
    int publishTime;
    int size;
    int status;

    Album({this.artist, this.copyrightId, this.id, this.mark, this.name, this.picId, this.publishTime, this.size, this.status});

    factory Album.fromJson(Map<String, dynamic> json) {
        return Album(
            artist: json['artist'] != null ? ArtistX.fromJson(json['artist']) : null, 
            copyrightId: json['copyrightId'], 
            id: json['id'], 
            mark: json['mark'], 
            name: json['name'], 
            picId: json['picId'], 
            publishTime: json['publishTime'], 
            size: json['size'], 
            status: json['status'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['copyrightId'] = this.copyrightId;
        data['id'] = this.id;
        data['mark'] = this.mark;
        data['name'] = this.name;
        data['picId'] = this.picId;
        data['publishTime'] = this.publishTime;
        data['size'] = this.size;
        data['status'] = this.status;
        if (this.artist != null) {
            data['artist'] = this.artist.toJson();
        }
        return data;
    }
}