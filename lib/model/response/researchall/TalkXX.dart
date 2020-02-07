class TalkXX {
    bool isFollow;
    Object participations;
    int talkId;
    String talkName;

    TalkXX({this.isFollow, this.participations, this.talkId, this.talkName});

    factory TalkXX.fromJson(Map<String, dynamic> json) {
        return TalkXX(
            isFollow: json['isFollow'], 
            //participations: json['participations'] != null ? Object.fromJson(json['participations']) : null,
            talkId: json['talkId'], 
            talkName: json['talkName'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['isFollow'] = this.isFollow;
        data['talkId'] = this.talkId;
        data['talkName'] = this.talkName;
        if (this.participations != null) {
            //data['participations'] = this.participations.toJson();
        }
        return data;
    }
}