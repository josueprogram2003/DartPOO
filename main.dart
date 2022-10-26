import 'dart:io' show stdin, stdout;
import 'auto.dart';

List<Auto> autoCompactados = [];
List<Auto> autoLujo = [];
List<Auto> vagonetas = [];
List<Auto> Camionetas = [];
int tipo = 0;
void main(List<String> args) {
  /*Auto auto = new Auto(1234, 'Ferrari', 2014, 1567, 'Vehiculo');
  auto.mensaje();*/
  inicializarValores();
  menu();
}

void inicializarValores() {
  int n = 1;
  while (n <= 1) {
    Auto auto = new Auto(1234, 'Ferrari', 2020, 1200, 1);
    Auto auto1 = new Auto(1234, 'Ferrari', 2020, 1200, 1);
    Auto auto2 = new Auto(1234, 'Ferrari', 2020, 1200, 1);
    Auto auto3 = new Auto(1234, 'Ferrari', 2020, 1200, 1);

    autoCompactados.addAll([auto, auto1, auto2, auto3]);

    Auto auto4 = new Auto(1234, 'Ferrari', 2020, 1200, 2);
    Auto auto5 = new Auto(1234, 'Ferrari', 2020, 1200, 2);
    Auto auto6 = new Auto(1234, 'Ferrari', 2020, 1200, 2);
    Auto auto7 = new Auto(1234, 'Ferrari', 2020, 1200, 2);
    autoLujo.addAll([auto4, auto5, auto6, auto7]);

    Auto auto8 = new Auto(1234, 'Ferrari', 2020, 1200, 3);
    Auto auto9 = new Auto(1234, 'Ferrari', 2020, 1200, 3);
    Auto auto10 = new Auto(1234, 'Ferrari', 2020, 1200, 3);
    Auto auto11 = new Auto(1234, 'Ferrari', 2020, 1200, 3);
    vagonetas.addAll([auto8, auto9, auto10, auto11]);
    Auto auto12 = new Auto(1234, 'Ferrari', 2020, 1200, 4);
    Auto auto13 = new Auto(1234, 'Ferrari', 2020, 1200, 4);
    Auto auto14 = new Auto(1234, 'Ferrari', 2020, 1200, 4);
    Auto auto15 = new Auto(1234, 'Ferrari', 2020, 1200, 4);
    Camionetas.addAll([auto12, auto13, auto14, auto15]);
    n++;
  }
}

void menu() {
  stdout.write("Menu Principal\n");
  stdout.write("1.Autos Compactados\n");
  stdout.write("2.Autos de Lujo\n");
  stdout.write("3.Vagonetas\n");
  stdout.write("4.Camionetas\n");
  stdout.write("5.Salir\n");
  stdout.write("Elija una opcion: ");
  var valor = stdin.readLineSync().toString();
  int x = int.parse(valor);
  switch (x) {
    case 1:
      tipo = 1;
      submenu(tipo);
      break;
    case 2:
      tipo = 2;
      submenu(tipo);

      break;
    case 3:
      tipo = 3;
      submenu(tipo);

      break;
    case 4:
      tipo = 4;
      submenu(tipo);
      break;
    case 5:
      stdout.write("Nos vemos\n");
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void submenu(int tipo) {
  do {
    stdout.write("\n");
    stdout.write("1.Registrar\n");
    stdout.write("2.Listar\n");
    stdout.write("3.Salir\n");
    stdout.write("Elija una opcion: ");
    var valor = stdin.readLineSync().toString();
    int x = int.parse(valor);
    switch (x) {
      case 1:
        registrar(tipo);
        break;
      case 2:
        listar(tipo);
        break;
      case 3:
        menu();
        break;
      default:
        stdout.write("Elija una opcion valida\n");
        menu();
    }
  } while (tipo < 5);
}

void registrar(int tipo) {
  if (tipo == 1) {
    stdout.write("\nNumero de Serie: ");
    var numero = stdin.readLineSync().toString();
    stdout.write("Marca: ");
    var marca = stdin.readLineSync().toString();
    stdout.write("Año: ");
    var anio = stdin.readLineSync().toString();
    stdout.write("Precio: ");
    var precio = stdin.readLineSync().toString();
    Auto autoNuevo = new Auto(
        int.parse(numero), marca, int.parse(anio), double.parse(precio), 1);
    autoCompactados.add(autoNuevo);
  } else if (tipo == 2) {
    stdout.write("\nNumero de Serie: ");
    var numero = stdin.readLineSync().toString();
    stdout.write("Marca: ");
    var marca = stdin.readLineSync().toString();
    stdout.write("Año: ");
    var anio = stdin.readLineSync().toString();
    stdout.write("Precio: ");
    var precio = stdin.readLineSync().toString();
    Auto autoNuevo = new Auto(
        int.parse(numero), marca, int.parse(anio), double.parse(precio), 2);
    autoLujo.add(autoNuevo);
  } else if (tipo == 3) {
    stdout.write("\nNumero de Serie: ");
    var numero = stdin.readLineSync().toString();
    stdout.write("Marca: ");
    var marca = stdin.readLineSync().toString();
    stdout.write("Año: ");
    var anio = stdin.readLineSync().toString();
    stdout.write("Precio: ");
    var precio = stdin.readLineSync().toString();
    Auto autoNuevo = new Auto(
        int.parse(numero), marca, int.parse(anio), double.parse(precio), 3);
    vagonetas.add(autoNuevo);
  } else if (tipo == 4) {
    stdout.write("\nNumero de Serie: ");
    var numero = stdin.readLineSync().toString();
    stdout.write("Marca: ");
    var marca = stdin.readLineSync().toString();
    stdout.write("Año: ");
    var anio = stdin.readLineSync().toString();
    stdout.write("Precio: ");
    var precio = stdin.readLineSync().toString();
    Auto autoNuevo = new Auto(
        int.parse(numero), marca, int.parse(anio), double.parse(precio), 4);
    Camionetas.add(autoNuevo);
  }
}

void listar(int tipo) {
  if (tipo == 1) {
    stdout.write("\nAutos Compactados\n\n");
    for (int i = 0; i < autoCompactados.length; i++) {
      int pocision = i + 1;
      stdout.write("$pocision.");
      autoCompactados[i].mensaje();
      stdout.write("\n");
    }
  } else if (tipo == 2) {
    stdout.write("\nAutos Lujo\n\n");
    for (int i = 0; i < autoLujo.length; i++) {
      int pocision = i + 1;
      stdout.write("$pocision.");
      autoLujo[i].mensaje();
      stdout.write("\n");
    }
  } else if (tipo == 3) {
    stdout.write("\nVagonetas\n\n");
    for (int i = 0; i < vagonetas.length; i++) {
      int pocision = i + 1;
      stdout.write("$pocision.");
      vagonetas[i].mensaje();
      stdout.write("\n");
    }
  } else if (tipo == 4) {
    stdout.write("\nCamionetas\n\n");
    for (int i = 0; i < Camionetas.length; i++) {
      int pocision = i + 1;
      stdout.write("$pocision.");
      Camionetas[i].mensaje();
      stdout.write("\n");
    }
  }
}
