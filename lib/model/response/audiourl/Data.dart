class Data {
    int br;
    bool canExtend;
    int code;
    String encodeType;
    int expi;
    int fee;
    int flag;
    Object freeTrialInfo;
    int gain;
    int id;
    String level;
    String md5;
    int payed;
    int size;
    String type;
    Object uf;
    String url;

    Data({this.br, this.canExtend, this.code, this.encodeType, this.expi, this.fee, this.flag, this.freeTrialInfo, this.gain, this.id, this.level, this.md5, this.payed, this.size, this.type, this.uf, this.url});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            br: json['br'], 
            canExtend: json['canExtend'], 
            code: json['code'], 
            encodeType: json['encodeType'], 
            expi: json['expi'], 
            fee: json['fee'], 
            flag: json['flag'], 
            //freeTrialInfo: json['freeTrialInfo'] != null ? Object.fromJson(json['freeTrialInfo']) : null,
            gain: json['gain'], 
            id: json['id'], 
            level: json['level'], 
            md5: json['md5'], 
            payed: json['payed'], 
            size: json['size'], 
            type: json['type'], 
           // uf: json['uf'] != null ? Object.fromJson(json['uf']) : null,
            url: json['url'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['br'] = this.br;
        data['canExtend'] = this.canExtend;
        data['code'] = this.code;
        data['encodeType'] = this.encodeType;
        data['expi'] = this.expi;
        data['fee'] = this.fee;
        data['flag'] = this.flag;
        data['gain'] = this.gain;
        data['id'] = this.id;
        data['level'] = this.level;
        data['md5'] = this.md5;
        data['payed'] = this.payed;
        data['size'] = this.size;
        data['type'] = this.type;
        data['url'] = this.url;
        if (this.freeTrialInfo != null) {
           // data['freeTrialInfo'] = this.freeTrialInfo.toJson();
        }
        if (this.uf != null) {
           // data['uf'] = this.uf.toJson();
        }
        return data;
    }
}