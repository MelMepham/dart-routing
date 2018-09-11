import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';


@Component(
  selector: 'not-found-app',
  templateUrl: 'not_found_component.html',
  styleUrls: ['not_found_component.css'],
  directives: [coreDirectives, routerDirectives],
)
class NotFoundComponent {}
