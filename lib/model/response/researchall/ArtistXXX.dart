class ArtistXXX {
    int albumSize;
    List<Object> alia;
    List<Object> alias;
    String briefDesc;
    int id;
    int img1v1Id;
    String img1v1Id_str;
    String img1v1Url;
    int musicSize;
    String name;
    int picId;
    String picId_str;
    String picUrl;
    int topicPerson;
    String trans;

    ArtistXXX({this.albumSize, this.alia, this.alias, this.briefDesc, this.id, this.img1v1Id, this.img1v1Id_str, this.img1v1Url, this.musicSize, this.name, this.picId, this.picId_str, this.picUrl, this.topicPerson, this.trans});

    factory ArtistXXX.fromJson(Map<String, dynamic> json) {
        return ArtistXXX(
            albumSize: json['albumSize'], 
            //alia: json['alia'] != null ? (json['alia'] as List).map((i) => Object.fromJson(i)).toList() : null,
            //alias: json['alias'] != null ? (json['alias'] as List).map((i) => Object.fromJson(i)).toList() : null,
            briefDesc: json['briefDesc'], 
            id: json['id'], 
            img1v1Id: json['img1v1Id'], 
            img1v1Id_str: json['img1v1Id_str'], 
            img1v1Url: json['img1v1Url'], 
            musicSize: json['musicSize'], 
            name: json['name'], 
            picId: json['picId'], 
            picId_str: json['picId_str'], 
            picUrl: json['picUrl'], 
            topicPerson: json['topicPerson'], 
            trans: json['trans'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['albumSize'] = this.albumSize;
        data['briefDesc'] = this.briefDesc;
        data['id'] = this.id;
        data['img1v1Id'] = this.img1v1Id;
        data['img1v1Id_str'] = this.img1v1Id_str;
        data['img1v1Url'] = this.img1v1Url;
        data['musicSize'] = this.musicSize;
        data['name'] = this.name;
        data['picId'] = this.picId;
        data['picId_str'] = this.picId_str;
        data['picUrl'] = this.picUrl;
        data['topicPerson'] = this.topicPerson;
        data['trans'] = this.trans;
        if (this.alia != null) {
            //data['alia'] = this.alia.map((v) => v.toJson()).toList();
        }
        if (this.alias != null) {
            //data['alias'] = this.alias.map((v) => v.toJson()).toList();
        }
        return data;
    }
}