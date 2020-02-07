

class Privilege {
    int cp;
    bool cs;
    int dl;
    int fee;
    int fl;
    int flag;
    int id;
    int maxbr;
    int payed;
    int pl;
    int sp;
    int st;
    int subp;
    bool toast;

    Privilege({this.cp, this.cs, this.dl, this.fee, this.fl, this.flag, this.id, this.maxbr, this.payed, this.pl, this.sp, this.st, this.subp, this.toast});

    factory Privilege.fromJson(Map<String, dynamic> json) {
        return Privilege(
            cp: json['cp'], 
            cs: json['cs'], 
            dl: json['dl'], 
            fee: json['fee'], 
            fl: json['fl'], 
            flag: json['flag'], 
            id: json['id'], 
            maxbr: json['maxbr'], 
            payed: json['payed'], 
            pl: json['pl'], 
            sp: json['sp'], 
            st: json['st'], 
            subp: json['subp'], 
            toast: json['toast'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cp'] = this.cp;
        data['cs'] = this.cs;
        data['dl'] = this.dl;
        data['fee'] = this.fee;
        data['fl'] = this.fl;
        data['flag'] = this.flag;
        data['id'] = this.id;
        data['maxbr'] = this.maxbr;
        data['payed'] = this.payed;
        data['pl'] = this.pl;
        data['sp'] = this.sp;
        data['st'] = this.st;
        data['subp'] = this.subp;
        data['toast'] = this.toast;
        return data;
    }
}