import 'PlayLists.dart';

class PlayList {
    bool more;
    String moreText;
    List<PlayLists> playLists;
    List<int> resourceIds;

    PlayList({this.more, this.moreText, this.playLists, this.resourceIds});

    factory PlayList.fromJson(Map<String, dynamic> json) {
        return PlayList(
            more: json['more'], 
            moreText: json['moreText'], 
            playLists: json['playLists'] != null ? (json['playLists'] as List).map((i) => PlayLists.fromJson(i)).toList() : null, 
            resourceIds: json['resourceIds'] != null ? new List<int>.from(json['resourceIds']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.playLists != null) {
            data['playLists'] = this.playLists.map((v) => v.toJson()).toList();
        }
        if (this.resourceIds != null) {
            data['resourceIds'] = this.resourceIds;
        }
        return data;
    }
}