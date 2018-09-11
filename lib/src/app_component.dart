import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'hero/hero_service.dart';
import 'routes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [routerDirectives],
  exports: [RoutePaths, Routes],
  providers: [ClassProvider(HeroService)]
)
class AppComponent {}
