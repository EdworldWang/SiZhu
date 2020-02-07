class Creator {
    int authStatus;
    Object expertTags;
    Object experts;
    String nickname;
    int userId;
    int userType;

    Creator({this.authStatus, this.expertTags, this.experts, this.nickname, this.userId, this.userType});

    factory Creator.fromJson(Map<String, dynamic> json) {
        return Creator(
            authStatus: json['authStatus'], 
            //expertTags: json['expertTags'] != null ? Object.fromJson(json['expertTags']) : null,
            //experts: json['experts'] != null ? Object.fromJson(json['experts']) : null,
            nickname: json['nickname'], 
            userId: json['userId'], 
            userType: json['userType'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['authStatus'] = this.authStatus;
        data['nickname'] = this.nickname;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        if (this.expertTags != null) {
            //data['expertTags'] = this.expertTags.toJson();
        }
        if (this.experts != null) {
            //data['experts'] = this.experts.toJson();
        }
        return data;
    }
}