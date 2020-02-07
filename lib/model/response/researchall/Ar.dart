class Ar {
    List<Object> alias;
    int id;
    String name;
    List<Object> tns;

    Ar({this.alias, this.id, this.name, this.tns});

    factory Ar.fromJson(Map<String, dynamic> json) {
        return Ar(
            //alias: json['alias'] != null ? (json['alias'] as List).map((i) => Object.fromJson(i)).toList() : null,
            id: json['id'], 
            name: json['name'], 
            //tns: json['tns'] != null ? (json['tns'] as List).map((i) => Object.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        if (this.alias != null) {
            //data['alias'] = this.alias.map((v) => v.toJson()).toList();
        }
        if (this.tns != null) {
            //data['tns'] = this.tns.map((v) => v.toJson()).toList();
        }
        return data;
    }
}