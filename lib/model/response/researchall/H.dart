

class H {
    int br;
    int fid;
    int size;
    int vd;

    H({this.br, this.fid, this.size, this.vd});

    factory H.fromJson(Map<String, dynamic> json) {
        return H(
            br: json['br'], 
            fid: json['fid'], 
            size: json['size'], 
            vd: json['vd'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['br'] = this.br;
        data['fid'] = this.fid;
        data['size'] = this.size;
        data['vd'] = this.vd;
        return data;
    }
}