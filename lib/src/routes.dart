import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';

import 'page_not_found/not_found_component.template.dart' as not_found_template;
import 'hero/hero-list/hero_list_component.template.dart' as hero_list_template;
import 'crisis/crisis-list/crisis_list_component.template.dart'
    as crisis_list_template;
import 'hero/hero/hero_component.template.dart' as hero_template;


export 'route_paths.dart';

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
    useAsDefault: true,
  );

  static final crises = RouteDefinition(
    routePath: RoutePaths.crises,
    component: crisis_list_template.CrisisListComponentNgFactory,
  );

    static final hero = RouteDefinition(
    routePath: RoutePaths.hero,
    component: hero_template.HeroComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    crises,
    heroes,
    hero,
    RouteDefinition(
      path: '.+',
      component: not_found_template.NotFoundComponentNgFactory,
    ),
  ];
}
