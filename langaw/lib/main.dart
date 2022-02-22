import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/effects.dart';
import 'dart:math';

void main() {
  var game = MyGame();
  runApp(GameWidget(game: game));
}

class MyGame extends FlameGame {

  bool pause = false;

  var ship = SpriteComponent();

  @override
  Future<void> onLoad() async {
    super.onLoad();
    print('loading assets');
    ship
      ..sprite = await loadSprite('ship.png')
      ..position = Vector2(500, 300)
      ..size = Vector2(100, 100)
      ..anchor = Anchor.center;

    ship.add;
    add(ship);
  }

  @override
  void update(double dt) {
    super.update(dt);
    // mySquare.x += 40 * dt;
  }
}

