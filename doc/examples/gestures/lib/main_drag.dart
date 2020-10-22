import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/components/mixins/tapable.dart';
import 'package:flame/flame.dart';

void main() {
  final game = MyGame();
  runApp(game.widget);
}

/// This file demonstrates HorizontalDragDetector not being called.
/// If you remove HasTapableComponents, HorizontalDragDetector is called.
class MyGame extends BaseGame
    with HasTapableComponents, HorizontalDragDetector {
  Size screenSize;

  MyGame() {
    initialize();
  }

  void initialize() async {
    resize(await Flame.util.initialDimensions());
  }

  @override
  void onHorizontalDragStart(DragStartDetails details) {
    print("onHorizontalDragStart");
    super.onHorizontalDragStart(details);
  }

  @override
  void onHorizontalDragEnd(DragEndDetails details) {
    print("onHorizontalDragEnd");
    super.onHorizontalDragEnd(details);
  }

  void resize(Size size) {
    screenSize = size;
  }
}
