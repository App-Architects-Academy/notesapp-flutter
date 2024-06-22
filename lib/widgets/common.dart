//function to get tile color based on index
import 'package:flutter/material.dart';

Color getTileColor(int index) {
  if (index % 5 == 0) {
    return Colors.red;
  } else if (index % 5 == 1) {
    return Colors.green;
  } else if (index % 5 == 2) {
    return Colors.blue;
  } else if (index % 5 == 3) {
    return Colors.orange;
  } else {
    return Colors.purple;
  }
}
