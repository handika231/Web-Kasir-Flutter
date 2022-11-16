import 'package:get_it/get_it.dart';

abstract class Car {
  void drive();
}

class CarImpl implements Car {
  @override
  void drive() {
    print('Driving');
  }
}

class CarMock implements Car {
  @override
  void drive() {
    print('Driving mock');
  }
}

class Engine {
  Car car;
  Engine(this.car);
}

void main() async {
  init();
  Engine engine = locator<Engine>();
  engine.car.drive();
}

GetIt locator = GetIt.instance;

init() {
  locator.registerLazySingleton<Car>(() => CarImpl());
  locator.registerLazySingleton(() => Engine(locator()));
}
