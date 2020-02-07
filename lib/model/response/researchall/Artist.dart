class Artist {
    int albumSize;
    List<Object> alias;
    String briefDesc;
    int id;
    int img1v1Id;
    String img1v1Url;
    int musicSize;
    String name;
    int picId;
    String picUrl;
    String trans;

    Artist({this.albumSize, this.alias, this.briefDesc, this.id, this.img1v1Id, this.img1v1Url, this.musicSize, this.name, this.picId, this.picUrl, this.trans});

    factory Artist.fromJson(Map<String, dynamic> json) {
        return Artist(
            albumSize: json['albumSize'], 
            //alias: json['alias'] != null ? (json['alias'] as List).map((i) => Object.fromJson(i)).toList() : null,
            briefDesc: json['briefDesc'], 
            id: json['id'], 
            img1v1Id: json['img1v1Id'], 
            img1v1Url: json['img1v1Url'], 
            musicSize: json['musicSize'], 
            name: json['name'], 
            picId: json['picId'], 
            picUrl: json['picUrl'], 
            trans: json['trans'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['albumSize'] = this.albumSize;
        data['briefDesc'] = this.briefDesc;
        data['id'] = this.id;
        data['img1v1Id'] = this.img1v1Id;
        data['img1v1Url'] = this.img1v1Url;
        data['musicSize'] = this.musicSize;
        data['name'] = this.name;
        data['picId'] = this.picId;
        data['picUrl'] = this.picUrl;
        data['trans'] = this.trans;
        if (this.alias != null) {
            //data['alias'] = this.alias.map((v) => v.toJson()).toList();
        }
        return data;
    }
}