void main() {
  int intValue = 12;
  double doubleValue = 3.14;
  String strValue = "Nelli";
  bool boolValue = true;

  //Második feladat:  A számok esetén végezd el a lehetséges műveleteket és írasd ki az eredményeket intResult és doubleResult értékként.

  int kerekitve = doubleValue.toInt();
  int intResult = intValue + kerekitve;
  int intResultKivonas = intValue - kerekitve;
  int intResultSzorzass = intValue * kerekitve;
  int intResultOsztas = intValue ~/ kerekitve;
  print("Az egész számok összege: $intResult");
  print("Az egész számok különbsége: $intResultKivonas");
  print("Az egész számok szorzata: $intResultSzorzass");
  print("Az egész számok hányadosa: $intResultOsztas");

  double sum = intValue + doubleValue;
  double difference = intValue - doubleValue;
  double product = intValue * doubleValue;
  double quotient = intValue / doubleValue;

  print("Összeg: $sum");
  print("Különbség: $difference");
  print("Szorzat: $product");
  print("Hányados: $quotient");

//3. Írasd ki a változók értékeit! A kiíratások előtt használj megjegyzéseket, hogy mit íratsz ki!
  print("Az int értéke: $intValue");
  print("A double értéke: $doubleValue");
  print("A string értéke: $strValue");
  print("A bool értéke: $boolValue");

// 4. A boolResult legyen a boolValue negáltja és írasd ki a boolResult értékét!

  bool boolResult = !boolValue;
  print("A boolValue negáltja: $boolResult");

//5. Szorgalmi:Végezz el további műveleteket és írasd ki az eredményeket!

}
