import 'dart:async';
import 'dart:html' show window;


import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'hero_service.dart';
import 'hero.dart';

@Component(
    selector: 'my-hero-detail',
    templateUrl: 'hero_detail_component.html',
    styleUrls: const ['hero_detail_component.css'],
    )
class HeroDetailComponent implements OnInit {

  Hero hero;

  final HeroService _heroService;
  final RouteParams _routeParams;

  HeroDetailComponent(this._heroService, this._routeParams);

  Future<Null> ngOnInit() async {
    var idString = _routeParams.get('id');
    var id = int.parse(idString ?? '', onError: (_) => null);
    if (id != null) hero = await (_heroService.getHero(id));
  }

  void goBack() {
    window.history.back();
  }

  Future<Null> save() async {
    await _heroService.update(hero);
    goBack();
  }
}

// TODO: Learn more about @Input() in the Attribute Directives chapter. https://angular.io/docs/dart/latest/guide/attribute-directives.html#input
// INFO: Going back too far could take us out of the application. That's acceptable in a demo. We'd guard against it in a real application, perhaps with the routerCanDeactivate hook. https://angular.io/docs/dart/latest/api/angular2.router/CanDeactivate-class.html
