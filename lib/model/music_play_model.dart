class MusicPlayModel{
  int _duration;
  int _position;
  String _musicName;
  String _singerName;

  int get duration => _duration;

  set duration(int value) {
    _duration = value;
  }

  MusicPlayModel(int duration, int position, String musicName, String singerName){
    this._duration = duration;
    this._position = position;
    this._musicName = musicName;
    this._singerName = singerName;
  }

  int get position => _position;

  String get singerName => _singerName;

  set singerName(String value) {
    _singerName = value;
  }

  String get musicName => _musicName;

  set musicName(String value) {
    _musicName = value;
  }

  set position(int value) {
    _position = value;
  }
}