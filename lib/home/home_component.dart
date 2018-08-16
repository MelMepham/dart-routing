import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';

@Component(
  selector: 'home-app',
  templateUrl: 'home_component.html',
  styleUrls: ['home_component.css'],
  directives: [coreDirectives, routerDirectives],

)
class HomeComponent {
}
