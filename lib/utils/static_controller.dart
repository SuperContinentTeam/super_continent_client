class StaticController {
  static final StaticController _instance = StaticController._internal();

  factory StaticController() => _instance;

  StaticController._internal();
}