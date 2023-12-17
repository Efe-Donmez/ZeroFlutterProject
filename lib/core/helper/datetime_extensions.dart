extension DateTimeString on DateTime {
  String toDMYstring() {
    DateTime time = toLocal();
    return "${time.day < 10 ? "0${time.day}" : "${time.day}"}/${time.month < 10 ? "0${time.month}" : "${time.month}"}/${time.year}";
  }

  String toMHTimeString() {
    DateTime time = toLocal();
    return "${time.hour < 10 ? "0${time.hour}" : "${time.hour}"}:${time.minute < 10 ? "0${time.minute}" : "${time.minute}"}";
  }
}
