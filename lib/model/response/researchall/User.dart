import 'UserX.dart';

class User {
    bool more;
    String moreText;
    List<int> resourceIds;
    List<UserX> users;

    User({this.more, this.moreText, this.resourceIds, this.users});

    factory User.fromJson(Map<String, dynamic> json) {
        return User(
            more: json['more'], 
            moreText: json['moreText'], 
            resourceIds: json['resourceIds'] != null ? new List<int>.from(json['resourceIds']) : null, 
            users: json['users'] != null ? (json['users'] as List).map((i) => UserX.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.resourceIds != null) {
            data['resourceIds'] = this.resourceIds;
        }
        if (this.users != null) {
            data['users'] = this.users.map((v) => v.toJson()).toList();
        }
        return data;
    }
}