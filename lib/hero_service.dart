import 'package:angular2/core.dart';
import 'dart:async';

import 'hero.dart';
import 'mock_heroes.dart';

@Injectable()
class HeroService {
  Future<List<Hero>> getHeroes() async => mockHeroes;

  Future<List<Hero>> getHeroesSlowly() {
    return new Future.delayed(const Duration(seconds: 2), getHeroes);
  }
}

// TODO: Marking the method's body with async makes the method immediately return a Future object. That Future later completes with the method's return value. For more information on async functions, see Declaring async functions in the Dart language tour. https://www.dartlang.org/docs/dart-up-and-running/ch02.html#async
