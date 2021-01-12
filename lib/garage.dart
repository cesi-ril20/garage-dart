import 'voiture.dart';

class CabinetComptable {
  final clients = <Object, int>{};

  void addClient(Object client) {
    clients[client] = null;
  }

  String toString() {
    return "clients : $clients";
  }
}

class Garage {
  final _objetsAReparer = <Vehicule>[];
  Garage();

  void nouvellePriseCharge(Vehicule vehicule) {
    _objetsAReparer.add(vehicule);
  }

  @override
  String toString() {
    return 'Je suis un garage avec les objets suivantes : $_objetsAReparer';
  }
}

class Voiture extends Vehicule {
  static const roues = 4;
  String couleur = 'blouge';

  @override
  void demarrer() {
    super.demarrer();
  }

  Voiture() {
    //  Coucou je suis le constructeur
  }
  @override
  String toString() {
    return 'Voiture $couleur';
  }
}

class Moto extends Vehicule {
  static const roues = 2;
  String couleur = 'bleue';

  void mettreLaBequille() {
    print("j'ai mis la béquille");
  }

  Moto() {
    //  Coucou je suis le constructeur
  }
  @override
  String toString() {
    return 'Moto $couleur';
  }
}
