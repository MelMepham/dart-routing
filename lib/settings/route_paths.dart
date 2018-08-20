import 'package:angular_router/angular_router.dart';

import '../route_paths.dart' as _parent;

class RoutePaths {
  static final profile = RoutePath(
    path: 'profile',
    parent: _parent.RoutePaths.settings,
  );

}