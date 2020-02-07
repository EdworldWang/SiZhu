class Al {
    int id;
    String name;
    int pic;
    String picUrl;
    String pic_str;
    List<Object> tns;

    Al({this.id, this.name, this.pic, this.picUrl, this.pic_str, this.tns});

    factory Al.fromJson(Map<String, dynamic> json) {
        return Al(
            id: json['id'], 
            name: json['name'], 
            pic: json['pic'], 
            picUrl: json['picUrl'], 
            pic_str: json['pic_str'], 
            //tns: json['tns'] != null ? (json['tns'] as List).map((i) => Object.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['pic'] = this.pic;
        data['picUrl'] = this.picUrl;
        data['pic_str'] = this.pic_str;
        if (this.tns != null) {
            //data['tns'] = this.tns.map((v) => v.toJson()).toList();
        }
        return data;
    }
}