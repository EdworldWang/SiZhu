import 'ArtistXXXXXX.dart';

class ArtistXXXXX {
    List<ArtistXXXXXX> artists;
    bool more;
    String moreText;
    List<int> resourceIds;

    ArtistXXXXX({this.artists, this.more, this.moreText, this.resourceIds});

    factory ArtistXXXXX.fromJson(Map<String, dynamic> json) {
        return ArtistXXXXX(
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => ArtistXXXXXX.fromJson(i)).toList() : null, 
            more: json['more'], 
            moreText: json['moreText'], 
            resourceIds: json['resourceIds'] != null ? new List<int>.from(json['resourceIds']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.artists != null) {
            data['artists'] = this.artists.map((v) => v.toJson()).toList();
        }
        if (this.resourceIds != null) {
            data['resourceIds'] = this.resourceIds;
        }
        return data;
    }
}