import 'dart:io';
void main() {
  bool selectedChoice = true;

  while (selectedChoice) {
    print("Please select an choice:");
    print("1. Length Conversion");
    print("2. Temperature Conversion");
    print("3. Area Conversion");
    print("4. Weight Conversion");
    print("5. Time Conversion");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      lengthConversion();
    } 
    else if (choice == 2) {
      temperatureConversion();
    } 
    else if (choice == 3) {
      areaConversion();
    } 
    else if (choice == 4) {
      weightConversion();
    } 
    else if (choice == 5) {
      timeConversion();
    } 
    else {
      print("Invalid choice");
    }

    print("Do you want to continue?");
    print("1. Yes");
    print("2. No");
    int continueOption = int.parse(stdin.readLineSync()!);

    if (continueOption != 1) {
      selectedChoice = false;
    }
  }
}

void lengthConversion() {
  print("Length Conversion Options:");
  print("1. Meter to kilometers");
  print("2. Kilometer to Meters");
  print("3. Feet to Inches");
  print("4. Inches to Feet");
  print("5. Centimeter to Meter");
  print("6. Meter to Centimeter");
  int choice = int.parse(stdin.readLineSync()!);

  double result = 0.0;

  if (choice == 1) {
    print("Enter length in meters:");
    double meters = double.parse(stdin.readLineSync()!);
    result = meters / 1000;
    print("Result: $meters meters = $result kilometers");
  } 
  else if (choice == 2) {
    print("Enter length in kilometers:");
    double kilometers = double.parse(stdin.readLineSync()!);
    result = kilometers * 1000;
    print("Result: $kilometers kilometers = $result meters");
  } 
  else if (choice == 3) {
    print("Enter length in feet:");
    double feet = double.parse(stdin.readLineSync()!);
    result = feet * 12;
    print("Result: $feet feet = $result inches");
  } 
  else if (choice == 4) {
    print("Enter length in inches:");
    double inches = double.parse(stdin.readLineSync()!);
    result = inches / 12;
    print("Result: $inches inches = $result feet");
  } 
  else if (choice == 5) {
    print("Enter length in centimeters:");
    double centimeters = double.parse(stdin.readLineSync()!);
    result = centimeters / 100;
    print("Result: $centimeters centimeters = $result meters");
  } 
  else if (choice == 6) {
    print("Enter length in meters:");
    double meters = double.parse(stdin.readLineSync()!);
    result = meters * 100;
    print("Result: $meters meters = $result centimeters");
  } 
  else {
    print("Invalid Option");
  }
}

void temperatureConversion() {
  print("Temperature Conversion Options:");
  print("1. Fahrenheit to Celsius");
  print("2. Celsius to Fahrenheit");
  int choice = int.parse(stdin.readLineSync()!);

  double result = 0.0;

  if (choice == 1) {
    print("Enter temperature in Fahrenheit:");
    double fahrenheit = double.parse(stdin.readLineSync()!);
    result = (fahrenheit - 32) * 5 / 9;
    print("Result: $fahrenheit Fahrenheit = $result Celsius");
  } 
  else if (choice == 2) {
    print("Enter temperature in Celsius:");
    double celsius = double.parse(stdin.readLineSync()!);
    result = (celsius * 9 / 5) + 32;
    print("Result: $celsius Celsius = $result Fahrenheit");
  } 
  else {
    print("Invalid Option");
  }
}

void areaConversion() {
  print("Area Conversion Options:");
  print("1. Square Miles to Square Yards");
  print("2. Square Yards to Square Miles");
  print("3. Square Yards to Square Feet");
  print("4. Square Feet to Square Yards");
  int choice = int.parse(stdin.readLineSync()!);

  double result = 0.0;

  if (choice == 1) {
    print("Enter area in square miles:");
    double squareMiles = double.parse(stdin.readLineSync()!);
    result = squareMiles * 1760 * 1760;
    print("Result: $squareMiles square miles = $result square yards");
  } 
  else if (choice == 2) {
    print("Enter area in square yards:");
    double squareYards = double.parse(stdin.readLineSync()!);
    result = squareYards / (1760 * 1760);
    print("Result: $squareYards square yards = $result square miles");
  } 
  else if (choice == 3) {
    print("Enter area in square yards:");
    double squareYards = double.parse(stdin.readLineSync()!);
    result = squareYards * 9;
    print("Result: $squareYards square yards = $result square feet");
  } 
  else if (choice == 4) {
    print("Enter area in square feet:");
    double squareFeet = double.parse(stdin.readLineSync()!);
    result = squareFeet / 9;
    print("Result: $squareFeet square feet = $result square yards");
  } 
  else {
    print("Invalid Option");
  }
}

void weightConversion() {
  print("Weight Conversion Options:");
  print("1. Kg to Grams");
  print("2. Grams to Kg");
  print("3. Pounds to Kg");
  print("4. Kg to Tons");
  print("5. Tons to Kg");
  int choice = int.parse(stdin.readLineSync()!);

  double result = 0.0;

  if (choice == 1) {
    print("Enter weight in kilograms:");
    double kg = double.parse(stdin.readLineSync()!);
    result = kg * 1000;
    print("Result: $kg kilograms = $result grams");
  } 
  else if (choice == 2) {
    print("Enter weight in grams:");
    double grams = double.parse(stdin.readLineSync()!);
    result = grams / 1000;
    print("Result: $grams grams = $result kilograms");
  } 
  else if (choice == 3) {
    print("Enter weight in pounds:");
    double pounds = double.parse(stdin.readLineSync()!);
    result = pounds / 2.20462;
    print("Result: $pounds pounds = $result kilograms");
  } 
  else if (choice == 4) {
    print("Enter weight in kilograms:");
    double kg = double.parse(stdin.readLineSync()!);
    result = kg / 1000;
    print("Result: $kg kilograms = $result tons");
  } 
  else if (choice == 5) {
    print("Enter weight in tons:");
    double tons = double.parse(stdin.readLineSync()!);
    result = tons * 1000;
    print("Result: $tons tons = $result kilograms");
  } 
  else {
    print("Invalid Option");
  }
}

void timeConversion() {
  print("Time Conversion Options:");
  print("1. Seconds to Minutes");
  print("2. Minutes to Seconds");
  print("3. Minutes to Hours");
  print("4. Seconds to Hours");
  print("5. Milliseconds to Minutes");
  print("6. Milliseconds to Hours");
  int choice = int.parse(stdin.readLineSync()!);

  double result = 0.0;

  if (choice == 1) {
    print("Enter time in seconds:");
    double seconds = double.parse(stdin.readLineSync()!);
    result = seconds / 60;
    print("Result: $seconds seconds = $result minutes");
  } 
  else if (choice == 2) {
    print("Enter time in minutes:");
    double minutes = double.parse(stdin.readLineSync()!);
    result = minutes * 60;
    print("Result: $minutes minutes = $result seconds");
  } 
  else if (choice == 3) {
    print("Enter time in minutes:");
    double minutes = double.parse(stdin.readLineSync()!);
    result = minutes / 60;
    print("Result: $minutes minutes = $result hours");
  } 
  else if (choice == 4) {
    print("Enter time in seconds:");
    double seconds = double.parse(stdin.readLineSync()!);
    result = seconds / 3600;
    print("Result: $seconds seconds = $result hours");
  } 
  else if (choice == 5) {
    print("Enter time in milliseconds:");
    double milliseconds = double.parse(stdin.readLineSync()!);
    result = milliseconds / 60000;
    print("Result: $milliseconds milliseconds = $result minutes");
  } 
  else if (choice == 6) {
    print("Enter time in milliseconds:");
    double milliseconds = double.parse(stdin.readLineSync()!);
    result = milliseconds / 3600000;
    print("Result: $milliseconds milliseconds = $result hours");
  } 
  else {
    print("Invalid Option");
  }
}


