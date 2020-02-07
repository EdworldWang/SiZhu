import 'Creator.dart';
import 'Track.dart';

class PlayLists {
    String alg;
    int bookCount;
    String coverImgUrl;
    Creator creator;
    String description;
    bool highQuality;
    int id;
    String name;
    int playCount;
    bool subscribed;
    Track track;
    int trackCount;
    int userId;

    PlayLists({this.alg, this.bookCount, this.coverImgUrl, this.creator, this.description, this.highQuality, this.id, this.name, this.playCount, this.subscribed, this.track, this.trackCount, this.userId});

    factory PlayLists.fromJson(Map<String, dynamic> json) {
        return PlayLists(
            alg: json['alg'], 
            bookCount: json['bookCount'], 
            coverImgUrl: json['coverImgUrl'], 
            creator: json['creator'] != null ? Creator.fromJson(json['creator']) : null, 
            description: json['description'], 
            highQuality: json['highQuality'], 
            id: json['id'], 
            name: json['name'], 
            playCount: json['playCount'], 
            subscribed: json['subscribed'], 
            track: json['track'] != null ? Track.fromJson(json['track']) : null, 
            trackCount: json['trackCount'], 
            userId: json['userId'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['bookCount'] = this.bookCount;
        data['coverImgUrl'] = this.coverImgUrl;
        data['description'] = this.description;
        data['highQuality'] = this.highQuality;
        data['id'] = this.id;
        data['name'] = this.name;
        data['playCount'] = this.playCount;
        data['subscribed'] = this.subscribed;
        data['trackCount'] = this.trackCount;
        data['userId'] = this.userId;
        if (this.creator != null) {
            data['creator'] = this.creator.toJson();
        }
        if (this.track != null) {
            data['track'] = this.track.toJson();
        }
        return data;
    }
}