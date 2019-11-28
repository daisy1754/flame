import 'dart:ui';

import 'package:flutter/foundation.dart';

import '../particle.dart';

/// A function which should render desired contents
/// onto a given canvas. External state needed for
/// rendering should be stored elsewhere, so that this delegate could use it
typedef ParticleRenderDelegate = void Function(Canvas c, Particle particle);

/// An abstract [Particle] container which delegates renderign outside
/// Allows to implement very interesting scenarios from scratch.
class ComputedParticle extends Particle {
  // A delegate function which will be called
  // to render particle on each frame
  ParticleRenderDelegate renderer;

  ComputedParticle({
    @required this.renderer,
    double lifespan,
    Duration duration,
  }) : super(
          lifespan: lifespan,
        );

  @override
  void render(Canvas canvas) {
    renderer(canvas, this);
  }
}
