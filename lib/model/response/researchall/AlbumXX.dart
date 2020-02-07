import 'package:sizhu/model/response/detail/Song.dart';

import 'ArtistXXX.dart';

class AlbumXX {
    String alg;
    List<String> alias;
    ArtistXXX artist;
    List<ArtistXXX> artists;
    String blurPicUrl;
    String briefDesc;
    String commentThreadId;
    String company;
    int companyId;
    int copyrightId;
    String description;
    int id;
    String name;
    bool onSale;
    bool paid;
    int pic;
    int picId;
    String picId_str;
    String picUrl;
    int publishTime;
    int size;
    Song songs;
    int status;
    String tags;
    String type;

    AlbumXX({this.alg, this.alias, this.artist, this.artists, this.blurPicUrl, this.briefDesc, this.commentThreadId, this.company, this.companyId, this.copyrightId, this.description, this.id, this.name, this.onSale, this.paid, this.pic, this.picId, this.picId_str, this.picUrl, this.publishTime, this.size, this.songs, this.status, this.tags, this.type});

    factory AlbumXX.fromJson(Map<String, dynamic> json) {
        return AlbumXX(
            alg: json['alg'], 
            alias: json['alias'] != null ? new List<String>.from(json['alias']) : null, 
            artist: json['artist'] != null ? ArtistXXX.fromJson(json['artist']) : null, 
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => ArtistXXX.fromJson(i)).toList() : null, 
            blurPicUrl: json['blurPicUrl'], 
            briefDesc: json['briefDesc'], 
            commentThreadId: json['commentThreadId'], 
            //company: json['company'] != null ? String?.fromJson(json['company']) : null,
            companyId: json['companyId'], 
            copyrightId: json['copyrightId'], 
            description: json['description'], 
            id: json['id'], 
            name: json['name'], 
            onSale: json['onSale'], 
            paid: json['paid'], 
            pic: json['pic'], 
            picId: json['picId'], 
            picId_str: json['picId_str'], 
            picUrl: json['picUrl'], 
            publishTime: json['publishTime'], 
            size: json['size'], 
            songs: json['songs'] != null ? Song.fromJson(json['songs']) : null,
            status: json['status'], 
            tags: json['tags'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['blurPicUrl'] = this.blurPicUrl;
        data['briefDesc'] = this.briefDesc;
        data['commentThreadId'] = this.commentThreadId;
        data['companyId'] = this.companyId;
        data['copyrightId'] = this.copyrightId;
        data['description'] = this.description;
        data['id'] = this.id;
        data['name'] = this.name;
        data['onSale'] = this.onSale;
        data['paid'] = this.paid;
        data['pic'] = this.pic;
        data['picId'] = this.picId;
        data['picId_str'] = this.picId_str;
        data['picUrl'] = this.picUrl;
        data['publishTime'] = this.publishTime;
        data['size'] = this.size;
        data['status'] = this.status;
        data['tags'] = this.tags;
        data['type'] = this.type;
        if (this.alias != null) {
            data['alias'] = this.alias;
        }
        if (this.artist != null) {
            data['artist'] = this.artist.toJson();
        }
        if (this.artists != null) {
            data['artists'] = this.artists.map((v) => v.toJson()).toList();
        }
        if (this.company != null) {
            //data['company'] = this.company.toJson();
        }
        if (this.songs != null) {
            data['songs'] = this.songs.toJson();
        }
        return data;
    }
}