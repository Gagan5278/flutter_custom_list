class ChairModel {
  final String id;
  final String name;
  final String price;
  final String desc;
  final String image;

  ChairModel({this.id, this.name, this.price, this.desc, this.image});
  static const decsription =
      'A chair is a piece of furniture with a raised surface supported by legs, commonly used to seat a single person. Chairs are supported most often by four legs and have a back';
  static List<ChairModel> itemList = [
    ChairModel(
        id: "1",
        name: "Office Chair",
        price: '\$2.4',
        desc: decsription,
        image: 'assets/C1.png'),
    ChairModel(
        id: "2",
        name: "Plastic Chair",
        price: '\$4.1',
        desc: decsription,
        image: 'assets/C2.png'),
    ChairModel(
        id: "3",
        name: "Leather Chair",
        price: '\$10.2',
        desc: decsription,
        image: 'assets/C3.png'),
    ChairModel(
        id: "4",
        name: "Yellow Chair",
        price: '\$9.32',
        desc: decsription,
        image: 'assets/C4.png'),
    ChairModel(
        id: "5",
        name: "Yellow Office Chair",
        price: '\$80.32',
        desc: decsription,
        image: 'assets/C5.png'),
    ChairModel(
        id: "6",
        name: "Wooden Chair",
        price: '\$18.90',
        desc: decsription,
        image: 'assets/C6.png'),
    ChairModel(
        id: "7",
        name: "Wooden and Iron Chair",
        price: '\$13.94',
        desc: decsription,
        image: 'assets/C7.png'),
  ];
}
