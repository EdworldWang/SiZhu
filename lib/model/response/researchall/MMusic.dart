class MMusic {
    int bitrate;
    int dfsId;
    String extension;
    int id;
    Object name;
    int playTime;
    int size;
    int sr;
    int volumeDelta;

    MMusic({this.bitrate, this.dfsId, this.extension, this.id, this.name, this.playTime, this.size, this.sr, this.volumeDelta});

    factory MMusic.fromJson(Map<String, dynamic> json) {
        return MMusic(
            bitrate: json['bitrate'], 
            dfsId: json['dfsId'], 
            extension: json['extension'], 
            id: json['id'], 
            //name: json['name'] != null ? Object.fromJson(json['name']) : null,
            playTime: json['playTime'], 
            size: json['size'], 
            sr: json['sr'], 
            volumeDelta: json['volumeDelta'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['bitrate'] = this.bitrate;
        data['dfsId'] = this.dfsId;
        data['extension'] = this.extension;
        data['id'] = this.id;
        data['playTime'] = this.playTime;
        data['size'] = this.size;
        data['sr'] = this.sr;
        data['volumeDelta'] = this.volumeDelta;
        if (this.name != null) {
            //data['name'] = this.name.toJson();
        }
        return data;
    }
}