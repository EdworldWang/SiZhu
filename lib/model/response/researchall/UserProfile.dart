

class UserProfile {
    String avatarUrl;
    bool followed;
    bool isAnchor;
    String nickname;
    int userId;
    int userType;

    UserProfile({this.avatarUrl, this.followed, this.isAnchor, this.nickname, this.userId, this.userType});

    factory UserProfile.fromJson(Map<String, dynamic> json) {
        return UserProfile(
            avatarUrl: json['avatarUrl'], 
            followed: json['followed'], 
            isAnchor: json['isAnchor'], 
            nickname: json['nickname'], 
            userId: json['userId'], 
            userType: json['userType'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['avatarUrl'] = this.avatarUrl;
        data['followed'] = this.followed;
        data['isAnchor'] = this.isAnchor;
        data['nickname'] = this.nickname;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        return data;
    }
}