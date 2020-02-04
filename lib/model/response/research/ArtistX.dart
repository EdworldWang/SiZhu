class ArtistX {
    int albumSize;
    List<Object> alias;
    int id;
    int img1v1;
    String img1v1Url;
    String name;
    int picId;
    Object picUrl;
    Object trans;

    ArtistX({this.albumSize, this.alias, this.id, this.img1v1, this.img1v1Url, this.name, this.picId, this.picUrl, this.trans});

    factory ArtistX.fromJson(Map<String, dynamic> json) {
        return ArtistX(
            albumSize: json['albumSize'],
            //alias: json['alias'] != null ? (json['alias'] as List).map((i) => Object.fromJson(i)).toList() : null,
            id: json['id'], 
            img1v1: json['img1v1'], 
            img1v1Url: json['img1v1Url'], 
            name: json['name'], 
            picId: json['picId'], 
            //picUrl: json['picUrl'] != null ? Object.fromJson(json['picUrl']) : null,
            //trans: json['trans'] != null ? Object.fromJson(json['trans']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['albumSize'] = this.albumSize;
        data['id'] = this.id;
        data['img1v1'] = this.img1v1;
        data['img1v1Url'] = this.img1v1Url;
        data['name'] = this.name;
        data['picId'] = this.picId;
        if (this.alias != null) {
            //data['alias'] = this.alias.map((v) => v.toJson()).toList();
        }
        if (this.picUrl != null) {
            //data['picUrl'] = this.picUrl.toJson();
        }
        if (this.trans != null) {
            //data['trans'] = this.trans.toJson();
        }
        return data;
    }
}