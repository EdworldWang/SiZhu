import 'Al.dart';
import 'Ar.dart';
import 'H.dart';
import 'L.dart';
import 'M.dart';

class Song {
    Object a;
    Al al;
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
    int originCoverType;
    int pop;
    int pst;
    int publishTime;
    String rt;
    Object rtUrl;
    List<Object> rtUrls;
    int rtype;
    Object rurl;
    int s_id;
    int st;
    int t;
    int v;

    Song({this.a, this.al, this.alia, this.ar, this.cd, this.cf, this.copyright, this.cp, this.crbt, this.djId, this.dt, this.fee, this.ftype, this.h, this.id, this.l, this.m, this.mark, this.mst, this.mv, this.name, this.no, this.originCoverType, this.pop, this.pst, this.publishTime, this.rt, this.rtUrl, this.rtUrls, this.rtype, this.rurl, this.s_id, this.st, this.t, this.v});

    factory Song.fromJson(Map<String, dynamic> json) {
        return Song(
            //a: json['a'] != null ? Object.fromJson(json['a']) : null,
            al: json['al'] != null ? Al.fromJson(json['al']) : null, 
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
            originCoverType: json['originCoverType'], 
            pop: json['pop'], 
            pst: json['pst'], 
            publishTime: json['publishTime'], 
            rt: json['rt'], 
            //rtUrl: json['rtUrl'] != null ? Object.fromJson(json['rtUrl']) : null,
            //rtUrls: json['rtUrls'] != null ? (json['rtUrls'] as List).map((i) => Object.fromJson(i)).toList() : null,
            rtype: json['rtype'], 
            //rurl: json['rurl'] != null ? Object.fromJson(json['rurl']) : null,
            s_id: json['s_id'], 
            st: json['st'], 
            t: json['t'], 
            v: json['v'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
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
        data['rt'] = this.rt;
        data['rtype'] = this.rtype;
        data['s_id'] = this.s_id;
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
           // data['crbt'] = this.crbt.toJson();
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
        if (this.rtUrl != null) {
            //data['rtUrl'] = this.rtUrl.toJson();
        }
        if (this.rtUrls != null) {
           // data['rtUrls'] = this.rtUrls.map((v) => v.toJson()).toList();
        }
        if (this.rurl != null) {
           // data['rurl'] = this.rurl.toJson();
        }
        return data;
    }
}