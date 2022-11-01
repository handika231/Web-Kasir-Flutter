extension ImagePath on String {
  String get path => 'assets/$this.png';
  String get lottie => 'assets/$this.json';
}
