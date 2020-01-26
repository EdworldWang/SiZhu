import 'package:flutter/widgets.dart';
import 'package:sizhu/model/music_play_model.dart';

class PlayerProvider with ChangeNotifier{
    MusicPlayModel _musicPlayModel;

    MusicPlayModel get musicPlayModel => _musicPlayModel;

    set musicPlayModel(MusicPlayModel value) {
      _musicPlayModel = value;
    }

    void setProviderModel(MusicPlayModel musicPlayModel){
      this._musicPlayModel = musicPlayModel;
      notifyListeners();
    }
}