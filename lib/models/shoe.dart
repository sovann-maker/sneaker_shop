class Shoe {
  String name;
  String price;
  String imagePath;
  String description;

  Shoe(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.description});
}

List<Shoe> userCart = [
  Shoe(
    name: 'Giannis Freak 4',
    price: '\$99.99',
    imagePath: 'lib/images/zoomfreak.png',
    description:
        'Giannis is an incessant storm of stamina and skill that keeps coming at opponents for 4 quarters or more. ',
  ),
  Shoe(
    name: 'Nike Kyrie 7',
    price: '\$200',
    imagePath: 'lib/images/kyrie.ong.jpeg',
    description:
        'The Kyrie 7 came out in 2020 with new tools. The Kyrie 7 features special techniques such as a 360-degree traction pattern, which allows players to maintain control.',
  ),
];

List<Shoe> shoeLists = [
  Shoe(
    name: 'Air Jordan 1 Mid',
    price: '\$125',
    imagePath: 'lib/images/airjordan.png',
    description:
        'Inspired by the original AJ1, this mid-top edition maintains the iconic look you love while choice colors and crisp leather give it a distinct identity.',
  ),
  Shoe(
    name: 'Giannis Freak 4',
    price: '\$99.99',
    imagePath: 'lib/images/zoomfreak.png',
    description:
        'Giannis is an incessant storm of stamina and skill that keeps coming at opponents for 4 quarters or more. ',
  ),
  Shoe(
    name: 'Nike Kyrie 7',
    price: '\$200',
    imagePath: 'lib/images/kyrie.ong.jpeg',
    description:
        'The Kyrie 7 came out in 2020 with new tools. The Kyrie 7 features special techniques such as a 360-degree traction pattern, which allows players to maintain control.',
  ),
  Shoe(
    name: 'KD Trey 5 X',
    price: '\$73',
    imagePath: 'lib/images/kdtrey.png',
    description:
        'With its lightweight upper and plush support system, the KD Trey 5 X can help you float like KD, waiting for the perfect moment to drive to the hoop.',
  ),
  Shoe(
    name: 'Nike Dunk Low Retro',
    price: '\$114',
    imagePath: 'lib/images/dunklow.png',
    description:
        'Created for the hardwood but taken to the streets, the Nike Dunk Low Retro returns with crisp overlays and original team colors.',
  ),
];
