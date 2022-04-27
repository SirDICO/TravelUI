import 'package:dico_travel/widgets/most_popular.dart';

class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelInfo() {
    return [
      Travel('Abuja', 'DICO Motel', 'assets/images/top1.jpg'),
      Travel('Kaduna', 'Simba Moutain View Resort', 'assets/images/top2.jpg'),
      Travel('Enugu', 'Coccumba Resort', 'assets/images/top3.jpg'),
      Travel('Ebonyi', 'EKO View Resort', 'assets/images/top4.jpg'),
    ];
  }

  static List<Travel> generateMostPopularInfo() {
    return [
      Travel('Kano', 'DICO Motel', 'assets/images/top1.jpg'),
      Travel('Sokoto', 'Simba Moutain View Resort', 'assets/images/top2.jpg'),
      Travel('Awka', 'Coccumba Resort', 'assets/images/top3.jpg'),
      Travel('Nkerefi', 'Farm View Resort', 'assets/images/top4.jpg'),
    ];
  }
}
