// singleton.dart
class GameManager {
  // Private constructor
  GameManager._privateConstructor();

  // Static field to hold the single instance
  static final GameManager _instance = GameManager._privateConstructor();

  // Factory constructor to return the single instance
  factory GameManager() {
    return _instance;
  }

  void startGame() {
    print('Game Started!');
  }
}

void main() {
  GameManager game1 = GameManager();
  GameManager game2 = GameManager(); // same instance as game1
  game1.startGame(); // Output: Game Started!
  // Checking if both references point to the same instance
  print(game1 == game2); // Output: true
}