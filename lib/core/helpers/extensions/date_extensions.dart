extension DateFormatting on DateTime? {
  String? toFullDateString() {
    if (this != null) {
      final dateString = "${this!.year}-${this!.month}-${this!.day}";
      return dateString;
    }
    return null;
  }

  // String? toMonthAndDate() {
  //   if (this != null) {
  //     final dateString = "${this!.day} ${this!.getMonthName()}";
  //     return dateString;
  //   }
  //   return null;
  // }

  // String? getMonthName() {
  //   if (this != null) {
  //     final monthName = months[this!.month]!;
  //     return monthName;
  //   }
  //   return null;
  // }
}
