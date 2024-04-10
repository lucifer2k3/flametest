import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:testflame/level/level.dart';

class Testgame extends FlameGame {
  @override
  Color backgroundColor() => Color(0xff2211F30);
  late final CameraComponent cam;

  final world = Level();

  @override
  FutureOr<void> onLoad() {
    cam = CameraComponent.withFixedResolution(
        world: world, height: 1080, width: 2280);
    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam, world]);
    // TODO: implement onLoad
    return super.onLoad();
  }
}
