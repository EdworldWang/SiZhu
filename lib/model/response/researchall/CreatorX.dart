

class CreatorX {
    int userId;
    String userName;

    CreatorX({this.userId, this.userName});

    factory CreatorX.fromJson(Map<String, dynamic> json) {
        return CreatorX(
            userId: json['userId'], 
            userName: json['userName'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['userId'] = this.userId;
        data['userName'] = this.userName;
        return data;
    }
}