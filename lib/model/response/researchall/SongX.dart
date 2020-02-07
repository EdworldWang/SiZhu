import 'Al.dart';
import 'Ar.dart';
import 'H.dart';
import 'L.dart';
import 'M.dart';
import 'Privilege.dart';

class SongX {
    Object a;
    Al al;
    String alg;
    List<Object> alia;
    List<Ar> ar;
    String cd;
    String cf;
    int copyright;
    int cp;
    Object crbt;
    int djId;
    int dt;
    int fee;
    int ftype;
    H h;
    int id;
    L l;
    M m;
    int mark;
    int mst;
    int mv;
    String name;
    int no;
    List<Object> officialTags;
    int originCoverType;
    int pop;
    Privilege privilege;
    int pst;
    int publishTime;
    String recommendText;
    String rt;
    Object rtUrl;
    List<Object> rtUrls;
    int rtype;
    Object rurl;
    int s_id;
    bool showRecommend;
    int st;
    int t;
    int v;

    SongX({this.a, this.al, this.alg, this.alia, this.ar, this.cd, this.cf, this.copyright, this.cp, this.crbt, this.djId, this.dt, this.fee, this.ftype, this.h, this.id, this.l, this.m, this.mark, this.mst, this.mv, this.name, this.no, this.officialTags, this.originCoverType, this.pop, this.privilege, this.pst, this.publishTime, this.recommendText, this.rt, this.rtUrl, this.rtUrls, this.rtype, this.rurl, this.s_id, this.showRecommend, this.st, this.t, this.v});

    factory SongX.fromJson(Map<String, dynamic> json) {
        return SongX(
            //a: json['a'] != null ? Object.fromJson(json['a']) : null,
            al: json['al'] != null ? Al.fromJson(json['al']) : null, 
            alg: json['alg'], 
            //alia: json['alia'] != null ? (json['alia'] as List).map((i) => Object.fromJson(i)).toList() : null,
            ar: json['ar'] != null ? (json['ar'] as List).map((i) => Ar.fromJson(i)).toList() : null, 
            cd: json['cd'], 
            cf: json['cf'], 
            copyright: json['copyright'], 
            cp: json['cp'], 
            //crbt: json['crbt'] != null ? Object.fromJson(json['crbt']) : null,
            djId: json['djId'], 
            dt: json['dt'], 
            fee: json['fee'], 
            ftype: json['ftype'], 
            h: json['h'] != null ? H.fromJson(json['h']) : null, 
            id: json['id'], 
            l: json['l'] != null ? L.fromJson(json['l']) : null, 
            m: json['m'] != null ? M.fromJson(json['m']) : null, 
            mark: json['mark'], 
            mst: json['mst'], 
            mv: json['mv'], 
            name: json['name'], 
            no: json['no'], 
            //officialTags: json['officialTags'] != null ? (json['officialTags'] as List).map((i) => Object.fromJson(i)).toList() : null,
            originCoverType: json['originCoverType'], 
            pop: json['pop'], 
            privilege: json['privilege'] != null ? Privilege.fromJson(json['privilege']) : null, 
            pst: json['pst'], 
            publishTime: json['publishTime'], 
            recommendText: json['recommendText'], 
            //rt: json['rt'] != null ? String?.fromJson(json['rt']) : null,
            //rtUrl: json['rtUrl'] != null ? Object.fromJson(json['rtUrl']) : null,
            //rtUrls: json['rtUrls'] != null ? (json['rtUrls'] as List).map((i) => Object.fromJson(i)).toList() : null,
            rtype: json['rtype'], 
            //rurl: json['rurl'] != null ? Object.fromJson(json['rurl']) : null,
            s_id: json['s_id'], 
            showRecommend: json['showRecommend'], 
            st: json['st'], 
            t: json['t'], 
            v: json['v'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['cd'] = this.cd;
        data['cf'] = this.cf;
        data['copyright'] = this.copyright;
        data['cp'] = this.cp;
        data['djId'] = this.djId;
        data['dt'] = this.dt;
        data['fee'] = this.fee;
        data['ftype'] = this.ftype;
        data['id'] = this.id;
        data['mark'] = this.mark;
        data['mst'] = this.mst;
        data['mv'] = this.mv;
        data['name'] = this.name;
        data['no'] = this.no;
        data['originCoverType'] = this.originCoverType;
        data['pop'] = this.pop;
        data['pst'] = this.pst;
        data['publishTime'] = this.publishTime;
        data['recommendText'] = this.recommendText;
        data['rtype'] = this.rtype;
        data['s_id'] = this.s_id;
        data['showRecommend'] = this.showRecommend;
        data['st'] = this.st;
        data['t'] = this.t;
        data['v'] = this.v;
        if (this.a != null) {
            //data['a'] = this.a.toJson();
        }
        if (this.al != null) {
            data['al'] = this.al.toJson();
        }
        if (this.alia != null) {
            //data['alia'] = this.alia.map((v) => v.toJson()).toList();
        }
        if (this.ar != null) {
            data['ar'] = this.ar.map((v) => v.toJson()).toList();
        }
        if (this.crbt != null) {
            //data['crbt'] = this.crbt.toJson();
        }
        if (this.h != null) {
            data['h'] = this.h.toJson();
        }
        if (this.l != null) {
            data['l'] = this.l.toJson();
        }
        if (this.m != null) {
            data['m'] = this.m.toJson();
        }
        if (this.officialTags != null) {
            //data['officialTags'] = this.officialTags.map((v) => v.toJson()).toList();
        }
        if (this.privilege != null) {
            data['privilege'] = this.privilege.toJson();
        }
        if (this.rt != null) {
            //data['rt'] = this.rt.toJson();
        }
        if (this.rtUrl != null) {
            //data['rtUrl'] = this.rtUrl.toJson();
        }
        if (this.rtUrls != null) {
            //data['rtUrls'] = this.rtUrls.map((v) => v.toJson()).toList();
        }
        if (this.rurl != null) {
            //data['rurl'] = this.rurl.toJson();
        }
        return data;
    }
}