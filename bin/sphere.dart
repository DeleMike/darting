class Sphere {
  const Sphere({this.radius});

  final int? radius;

  static const PI = 3.142;

  double get volume {
    return (1.333) * PI * (radius! * radius! * radius!);
  }

  double get surfaceArea => 4 * PI * (radius! * radius!);
}
