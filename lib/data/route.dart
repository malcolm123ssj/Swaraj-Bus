class Route {
  int routeNumber;
  List<String> list;
  List<int> listBus;

  Route(this.routeNumber, this.list, this.listBus);
}

const String BIT = "BIT";
const String Doranda = "Doranda";
const String Firayalal = "Firayalal";
const String Lalpur = "Lalpur";
const String ButiMore = "Buti More";
const String KantaToli = "Kanta Toli";

Route route1 = Route(1, [BIT, Doranda, Firayalal, Lalpur, BIT], [1, 6]);
Route route2 = Route(2, [BIT, Firayalal, Lalpur, KantaToli, BIT], [2, 7]);
Route route3 = Route(3, [BIT, Doranda, Lalpur, KantaToli, BIT], [3, 8]);
Route route4 = Route(4, [BIT, Firayalal, KantaToli, ButiMore, BIT], [4, 9]);
Route route5 = Route(5, [BIT, Doranda, Lalpur, ButiMore, BIT], [5, 10]);
