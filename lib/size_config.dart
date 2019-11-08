import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig{
  static double _screenwidth;
  static double _screenheight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0 ;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;

  void init(BoxConstraints constraints, Orientation orientation){
    if (orientation == Orientation.portrait){
      _screenwidth = constraints.maxWidth;
      _screenheight = constraints.maxHeight;
    }else{
      _screenwidth = constraints.maxWidth;
      _screenheight = constraints.maxHeight;
    }
    _blockSizeHorizontal = _screenwidth / 100;
    _blockSizeVertical = _screenheight / 100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;
  }
}