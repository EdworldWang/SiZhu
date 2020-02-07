import 'Resource.dart';

class MlogX {
    String alg;
    String id;
    int matchField;
    String matchFieldContent;
    Object position;
    Object reason;
    Resource resource;
    bool sameCity;
    int type;

    MlogX({this.alg, this.id, this.matchField, this.matchFieldContent, this.position, this.reason, this.resource, this.sameCity, this.type});

    factory MlogX.fromJson(Map<String, dynamic> json) {
        return MlogX(
            alg: json['alg'], 
            id: json['id'], 
            matchField: json['matchField'], 
            matchFieldContent: json['matchFieldContent'], 
            //position: json['position'] != null ? Object.fromJson(json['position']) : null,
            //reason: json['reason'] != null ? Object.fromJson(json['reason']) : null,
            resource: json['resource'] != null ? Resource.fromJson(json['resource']) : null, 
            sameCity: json['sameCity'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['id'] = this.id;
        data['matchField'] = this.matchField;
        data['matchFieldContent'] = this.matchFieldContent;
        data['sameCity'] = this.sameCity;
        data['type'] = this.type;
        if (this.position != null) {
           // data['position'] = this.position.toJson();
        }
        if (this.reason != null) {
           // data['reason'] = this.reason.toJson();
        }
        if (this.resource != null) {
            data['resource'] = this.resource.toJson();
        }
        return data;
    }
}