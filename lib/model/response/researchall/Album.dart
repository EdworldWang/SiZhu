import 'package:sizhu/model/response/detail/Song.dart';

import 'ArtistX.dart';

class Album {
    List<Object> alias;
    ArtistX artist;
    List<ArtistX> artists;
    String blurPicUrl;
    String briefDesc;
    String commentThreadId;
    String company;
    int companyId;
    int copyrightId;
    String description;
    int id;
    String name;
    int pic;
    int picId;
    String picUrl;
    int publishTime;
    int size;
    List<Song> songs;
    int status;
    String tags;
    String type;

    Album({this.alias, this.artist, this.artists, this.blurPicUrl, this.briefDesc, this.commentThreadId, this.company, this.companyId, this.copyrightId, this.description, this.id, this.name, this.pic, this.picId, this.picUrl, this.publishTime, this.size, this.songs, this.status, this.tags, this.type});

    factory Album.fromJson(Map<String, dynamic> json) {
        return Album(
            //alias: json['alias'] != null ? (json['alias'] as List).map((i) => Object.fromJson(i)).toList() : null,
            artist: json['artist'] != null ? ArtistX.fromJson(json['artist']) : null, 
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => ArtistX.fromJson(i)).toList() : null, 
            blurPicUrl: json['blurPicUrl'], 
            briefDesc: json['briefDesc'], 
            commentThreadId: json['commentThreadId'], 
            company: json['company'], 
            companyId: json['companyId'], 
            copyrightId: json['copyrightId'], 
            description: json['description'], 
            id: json['id'], 
            name: json['name'], 
            pic: json['pic'], 
            picId: json['picId'], 
            picUrl: json['picUrl'], 
            publishTime: json['publishTime'], 
            size: json['size'], 
            songs: json['songs'] != null ? (json['songs'] as List).map((i) => Song.fromJson(i)).toList() : null,
            status: json['status'], 
            tags: json['tags'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['blurPicUrl'] = this.blurPicUrl;
        data['briefDesc'] = this.briefDesc;
        data['commentThreadId'] = this.commentThreadId;
        data['company'] = this.company;
        data['companyId'] = this.companyId;
        data['copyrightId'] = this.copyrightId;
        data['description'] = this.description;
        data['id'] = this.id;
        data['name'] = this.name;
        data['pic'] = this.pic;
        data['picId'] = this.picId;
        data['picUrl'] = this.picUrl;
        data['publishTime'] = this.publishTime;
        data['size'] = this.size;
        data['status'] = this.status;
        data['tags'] = this.tags;
        data['type'] = this.type;
        if (this.alias != null) {
            //data['alias'] = this.alias.map((v) => v.toJson()).toList();
        }
        if (this.artist != null) {
            data['artist'] = this.artist.toJson();
        }
        if (this.artists != null) {
            data['artists'] = this.artists.map((v) => v.toJson()).toList();
        }
        if (this.songs != null) {
            data['songs'] = this.songs.map((v) => v.toJson()).toList();
        }
        return data;
    }
}