String timecalculator(int hours, int minutes) {
  if (hours > 12) {
    int newHours;
    newHours = hours - 12;
    if (newHours == 0) {
      newHours = newHours = 1;
    }
    return "$newHours:${minutes}PM";
  }
  return "$hours:${minutes}AM";
}
