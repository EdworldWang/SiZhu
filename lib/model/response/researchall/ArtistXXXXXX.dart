class ArtistXXXXXX {
    int accountId;
    int albumSize;
    String alg;
    List<String> alia;
    List<Object> alias;
    bool followed;
    int id;
    int img1v1;
    String img1v1Url;
    int mvSize;
    String name;
    int picId;
    String picUrl;
    Object trans;

    ArtistXXXXXX({this.accountId, this.albumSize, this.alg, this.alia, this.alias, this.followed, this.id, this.img1v1, this.img1v1Url, this.mvSize, this.name, this.picId, this.picUrl, this.trans});

    factory ArtistXXXXXX.fromJson(Map<String, dynamic> json) {
        return ArtistXXXXXX(
            accountId: json['accountId'], 
            albumSize: json['albumSize'], 
            alg: json['alg'], 
            alia: json['alia'] != null ? new List<String>.from(json['alia']) : null, 
            //alias: json['alias'] != null ? (json['alias'] as List).map((i) => Object.fromJson(i)).toList() : null,
            followed: json['followed'], 
            id: json['id'], 
            img1v1: json['img1v1'], 
            img1v1Url: json['img1v1Url'], 
            mvSize: json['mvSize'], 
            name: json['name'], 
            picId: json['picId'], 
            picUrl: json['picUrl'], 
            //trans: json['trans'] != null ? Object.fromJson(json['trans']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountId'] = this.accountId;
        data['albumSize'] = this.albumSize;
        data['alg'] = this.alg;
        data['followed'] = this.followed;
        data['id'] = this.id;
        data['img1v1'] = this.img1v1;
        data['img1v1Url'] = this.img1v1Url;
        data['mvSize'] = this.mvSize;
        data['name'] = this.name;
        data['picId'] = this.picId;
        data['picUrl'] = this.picUrl;
        if (this.alia != null) {
            data['alia'] = this.alia;
        }
        if (this.alias != null) {
            //data['alias'] = this.alias.map((v) => v.toJson()).toList();
        }
        if (this.trans != null) {
            //data['trans'] = this.trans.toJson();
        }
        return data;
    }
}