class Task {
  String text;
  bool isChecked;

  Task({required this.text, required this.isChecked});

  void toggleCheckBox() {
    isChecked = !isChecked;
  }
}
