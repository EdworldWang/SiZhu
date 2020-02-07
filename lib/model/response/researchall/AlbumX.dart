import 'AlbumXX.dart';

class AlbumX {
    List<AlbumXX> albums;
    bool more;
    String moreText;
    List<int> resourceIds;

    AlbumX({this.albums, this.more, this.moreText, this.resourceIds});

    factory AlbumX.fromJson(Map<String, dynamic> json) {
        return AlbumX(
            albums: json['albums'] != null ? (json['albums'] as List).map((i) => AlbumXX.fromJson(i)).toList() : null, 
            more: json['more'], 
            moreText: json['moreText'], 
            resourceIds: json['resourceIds'] != null ? new List<int>.from(json['resourceIds']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.albums != null) {
            data['albums'] = this.albums.map((v) => v.toJson()).toList();
        }
        if (this.resourceIds != null) {
            data['resourceIds'] = this.resourceIds;
        }
        return data;
    }
}