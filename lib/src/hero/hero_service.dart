import 'dart:async';
import 'package:angular/angular.dart';

import 'hero.dart';

const heroServiceProvider = FactoryProvider(HeroService, heroServiceFactory);

HeroService heroServiceFactory() =>
    HeroService(nameTag: 'defaultTag', type: '1');

class HeroService {
  String nameTag;
  List<Hero> mockHeroes;

  HeroService({this.nameTag, String type}) {
    mockHeroes = <Hero>[
      Hero(11, 'MrLineNice'),
      Hero(12, 'Narco'),
      Hero(13, 'Bombassssto'),
      Hero(14, 'Celeritas'),
      Hero(15, 'Magneta'),
      Hero(16, 'RubberMan'),
      Hero(17, 'Dynama'),
      Hero(18, 'Dr IQ'),
      Hero(19, 'Magma'),
      Hero(20, nameTag),
      Hero(21, type),
    ];
  }

  Future<List<Hero>> getAll() async => mockHeroes;

  // See the "Take it slow" appendix
  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }
}
