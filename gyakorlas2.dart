//1. Keress egy falvédő verset és a falvedo String változó vegye fel ezt a Stringliteral értéket!

void main() {
  String falvedo = "Jobb a békesség, mint a pereskedés.";
  print(falvedo);

// 2. Írasd ki a falvedo értékét:
// eredetiben
// kisbetűvel
// nagybetűvel
// trimmelve
// a szóközöket kötőjellel helyettesítve
// Az 5. karakteről a végéig, melynek az elején ... (három pont és szóköz) van
// Az első 3 karakter UTF-16 kódját
// A 10. karaktertől a végéig, melynek a végén ... (szóköz és három pont) van
  String eredeti = falvedo;
  print("AZ eredeti szöveg: $eredeti");
  String kisbetu = eredeti.toLowerCase();
  print("A kisbetás változat: $kisbetu");
  String nagybetu = eredeti.toUpperCase();
  print("A nagybetűs változat: $nagybetu");
  String trimm = eredeti.trim();
  print("A trimmelt változat: $trimm");
  String kotojel = eredeti..replaceAll(" ", "-");
  print("Szóközök helyett kötőjel: $kotojel");
  String reszlet1 = "... ${eredeti.substring(4)}";
  print("5. karaktertől a végéig: $reszlet1");
  String utf = eredeti.codeUnits.take(3).join(',');
  print("Az első 3 karakter UTF-16 kódja: $utf ");

  String reszlet2 = "${eredeti.substring(9)} ...";
  print("10. karaktertől a végéig: $reszlet2");
}
