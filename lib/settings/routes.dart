import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';

import 'profile/profile_component.template.dart' as profile_template;

export 'route_paths.dart';

class Routes {
  static final profile = RouteDefinition(
    routePath: RoutePaths.profile,
    component: profile_template.ProfileComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    profile,
  ];
}
