class NonOrganik {
  String id;
  String img;
  String title;
  double price;

  NonOrganik(
      {required this.id,
      required this.img,
      required this.title,
      required this.price});
}

class NonOrganikItems {
  static final List<NonOrganik> nonOrganikItems = [
    NonOrganik(
        id: 'NO1',
        img: 'assets/images/botol.png',
        title: "Botol",
        price: 1.700),
    NonOrganik(
        id: 'NO2', img: 'assets/images/cup.png', title: "Cup", price: 1.700),
    NonOrganik(
        id: 'NO3',
        img: 'assets/images/kalengsoda.png',
        title: "Kaleng Soda",
        price: 1.700),
    NonOrganik(
        id: 'NO4',
        img: 'assets/images/kalengtebal.png',
        title: "Kaleng Tebal",
        price: 1.700),
    NonOrganik(
        id: 'NO5',
        img: 'assets/images/bkartonotol.png',
        title: "Karton",
        price: 1.700),
    NonOrganik(
        id: 'NO6',
        img: 'assets/images/kardus.png',
        title: "Kardus",
        price: 1.700),
    NonOrganik(
        id: 'NO7', img: 'assets/images/besi.png', title: "Besi", price: 1.700),
    NonOrganik(
        id: 'NO8',
        img: 'assets/images/plastik.png',
        title: "Plastik",
        price: 1.700),
  ];
}
