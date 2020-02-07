import 'TalkXX.dart';

class MlogBaseData {
    Object audioDTO;
    int coverColor;
    Object coverDynamicUrl;
    int coverHeight;
    String coverUrl;
    int coverWidth;
    String id;
    Object interveneText;
    Object mlogLocationDTO;
    int pubTime;
    TalkXX talk;
    String text;
    Object threadId;
    int type;

    MlogBaseData({this.audioDTO, this.coverColor, this.coverDynamicUrl, this.coverHeight, this.coverUrl, this.coverWidth, this.id, this.interveneText, this.mlogLocationDTO, this.pubTime, this.talk, this.text, this.threadId, this.type});

    factory MlogBaseData.fromJson(Map<String, dynamic> json) {
        return MlogBaseData(
            //audioDTO: json['audioDTO'] != null ? Object.fromJson(json['audioDTO']) : null,
            coverColor: json['coverColor'], 
            //coverDynamicUrl: json['coverDynamicUrl'] != null ? Object.fromJson(json['coverDynamicUrl']) : null,
            coverHeight: json['coverHeight'], 
            coverUrl: json['coverUrl'], 
            coverWidth: json['coverWidth'], 
            id: json['id'], 
            //interveneText: json['interveneText'] != null ? Object.fromJson(json['interveneText']) : null,
            //mlogLocationDTO: json['mlogLocationDTO'] != null ? Object.fromJson(json['mlogLocationDTO']) : null,
            pubTime: json['pubTime'], 
            talk: json['talk'] != null ? TalkXX.fromJson(json['talk']) : null, 
            text: json['text'], 
            //threadId: json['threadId'] != null ? Object.fromJson(json['threadId']) : null,
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['coverColor'] = this.coverColor;
        data['coverHeight'] = this.coverHeight;
        data['coverUrl'] = this.coverUrl;
        data['coverWidth'] = this.coverWidth;
        data['id'] = this.id;
        data['pubTime'] = this.pubTime;
        data['text'] = this.text;
        data['type'] = this.type;
        if (this.audioDTO != null) {
            //data['audioDTO'] = this.audioDTO.toJson();
        }
        if (this.coverDynamicUrl != null) {
            //data['coverDynamicUrl'] = this.coverDynamicUrl.toJson();
        }
        if (this.interveneText != null) {
            //data['interveneText'] = this.interveneText.toJson();
        }
        if (this.mlogLocationDTO != null) {
            //data['mlogLocationDTO'] = this.mlogLocationDTO.toJson();
        }
        if (this.talk != null) {
            data['talk'] = this.talk.toJson();
        }
        if (this.threadId != null) {
            //data['threadId'] = this.threadId.toJson();
        }
        return data;
    }
}