import 'dart:async';
import 'dart:convert';

import 'package:angular2/core.dart';
import 'package:http/http.dart';

import 'hero.dart';

@Injectable()
class HeroService {

  static const _heroesUrl = 'app/heroes'; // URL to web API

  final Client _http;

  HeroService(this._http);

  Future<List<Hero>> getHeroes() async {
    try {
      final response = await _http.get(_heroesUrl);
      final heroes = _extractData(response)
          .map((value) => new Hero.fromJson(value))
          .toList();
      return heroes;
    } catch (e) {
      throw _handleError(e);
    }
  }

  dynamic _extractData(Response resp) => JSON.decode(resp.body)['data'];

  Exception _handleError(dynamic e) {
    print(e); // for demo purposes only
    return new Exception('Server error; cause: $e');
  }


  Future<Hero> getHero(int id) async =>
      (await getHeroes()).firstWhere((hero) => hero.id == id);

  static final _headers = {'Content-Type': 'application/json'};

  Future<Hero> update(Hero hero) async {
    try {
      var url = '$_heroesUrl/${hero.id}';
      Response response =
      await _http.put(
          url,
          headers: _headers,
          body: JSON.encode(hero)
        );
      return new Hero.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Hero> create(String name) async {
    try {
      final response = await _http.post(
          _heroesUrl,
          headers: _headers,
          body: JSON.encode({'name': name})
        );
      return new Hero.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Null> delete(int id) async {
  try {
    var url = '$_heroesUrl/$id';
    await _http.delete(url, headers: _headers);
  } catch (e) {
    throw _handleError(e);
  }
}
}

// TODO: Marking the method's body with async makes the method immediately return a Future object. That Future later completes with the method's return value. For more information on async functions, see Declaring async functions in the Dart language tour. https://www.dartlang.org/docs/dart-up-and-running/ch02.html#async
