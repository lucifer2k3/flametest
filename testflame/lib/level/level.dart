import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';

class Level extends World {
  late TiledComponent level;

  @override
  Future<void> onLoad() async {
    level = await TiledComponent.load('map2.tmx', Vector2.all(16));

    add(level);

    // TODO: implement onLoad
    return super.onLoad();
  }
}
