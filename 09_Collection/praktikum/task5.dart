void main(List<String> args) {
  if (args.length > 2) {
    var hasil;
    var a = double.parse(args[0]);
    var b = double.parse(args[2]);

    switch (args[1]) {
      case '+':
        hasil = a + b;
        break;
      case '-':
        hasil = a - b;
        break;
      case 'x':
        hasil = a * b;
        break;
      case '/':
        hasil = a / b;
        break;
      default:
        print("Error!");
    }
    print("Hasil dari $a ${args[1]} $b : $hasil");
  } else {
    print("Error!");
  }
}
