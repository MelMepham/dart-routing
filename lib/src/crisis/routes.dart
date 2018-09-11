import 'package:angular_router/angular_router.dart';

import 'crisis/crisis_component.template.dart' as crisis_template;
import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final crisis = RouteDefinition(
    routePath: RoutePaths.crisis,
    component: crisis_template.CrisisComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    crisis,
  ];
}