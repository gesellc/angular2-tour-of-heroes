import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'heroes_component.dart';
import 'hero_service.dart';

@Component(
    selector: 'my-app',
    template: '''
      <h1>{{title}}</h1>
      <my-heroes></my-heroes>
      ''',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [HeroService, ROUTER_PROVIDERS])
class AppComponent {
  String title = 'Tour of Heroes';
}

// TODO: The Routing and Navigation chapter covers the router in more detail than we will in this tutorial. The Routing and Navigation chapter covers the router in more detail than we will in this tutorial.
