class Tshirt {
  final int tshirtId;
  final int price;
  final String size;
  final double rating;
  final int length;
  final String color;
  final String category;
  final String tshirtName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Tshirt(
      {required this.tshirtId,
        required this.price,
        required this.category,
        required this.tshirtName,
        required this.size,
        required this.rating,
        required this.length,
        required this.color,
        required this.imageURL,
        required this.isFavorated,
        required this.decription,
        required this.isSelected});

  //List Data T-Shirt
  static List<Tshirt> tshirtList = [
    Tshirt(
        tshirtId: 0,
        price: 75000,
        category: 'T-Shirt',
        tshirtName: 'HangOut Friend',
        size: 'Small',
        rating: 4.5,
        length: 66,
        color: 'White, Grey',
        imageURL: 'assets/images/mockup-1.png',
        isFavorated: true,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
    Tshirt(
        tshirtId: 1,
        price: 75000,
        category: 'T-Shirt',
        tshirtName: 'Vacation Friend',
        size: 'Medium',
        rating: 4.8,
        length: 70,
        color: 'White, Black',
        imageURL: 'assets/images/mockup-2.png',
        isFavorated: false,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
    Tshirt(
        tshirtId: 2,
        price: 75000,
        category: 'T-Shirt',
        tshirtName: 'Surabaya: Landmark',
        size: 'Large',
        rating: 4.7,
        length: 72,
        color: 'Black, Grey',
        imageURL: 'assets/images/mockup-3.png',
        isFavorated: false,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
    Tshirt(
        tshirtId: 3,
        price: 75000,
        category: 'T-Shirt',
        tshirtName: 'Our SRKL',
        size: 'Small',
        rating: 4.5,
        length: 66,
        color: 'White, Black',
        imageURL: 'assets/images/mockup-5.png',
        isFavorated: false,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
    Tshirt(
        tshirtId: 4,
        price: 100000,
        category: 'Hoodie',
        tshirtName: 'Donut Boy',
        size: 'Large',
        rating: 4.1,
        length: 72,
        color: 'White, Grey',
        imageURL: 'assets/images/mockup-6.png',
        isFavorated: true,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
    Tshirt(
        tshirtId: 5,
        price: 100000,
        category: 'Hoodie',
        tshirtName: 'Donut Girl',
        size: 'Medium',
        rating: 4.4,
        length: 70,
        color: 'Black, Grey',
        imageURL: 'assets/images/mockup-7.png',
        isFavorated: false,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
    Tshirt(
        tshirtId: 6,
        price: 75000,
        category: 'T-Shirt',
        tshirtName: 'Surabaya: Icon',
        size: 'Small',
        rating: 4.2,
        length: 66,
        color: 'White, Black',
        imageURL: 'assets/images/mockup-8.png',
        isFavorated: false,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
    Tshirt(
        tshirtId: 7,
        price: 75000,
        category: 'T-Shirt',
        tshirtName: 'Surabaya: Character',
        size: 'Medium',
        rating: 4.5,
        length: 70,
        color: 'White, Grey',
        imageURL: 'assets/images/mockup-9.png',
        isFavorated: false,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
    Tshirt(
        tshirtId: 8,
        price: 75000,
        category: 'T-Shirt',
        tshirtName: 'Surabaya: C-Town',
        size: 'Medium',
        rating: 4.7,
        length: 70,
        color: 'White, Black',
        imageURL: 'assets/images/mockup-10.png',
        isFavorated: false,
        decription:
        'Temukan gaya edgy dan tren terbaru dalam koleksi baju '
            'distro kami yang beragam, sempurna untuk tampil '
            'dengan percaya diri dalam segala kesempatan.',
        isSelected: false),
  ];

  //Baju favorit
  static List<Tshirt> getFavoritedTshirts(){
    List<Tshirt> _travelList = Tshirt.tshirtList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Cart Baju
  static List<Tshirt> addedToCartTshirts(){
    List<Tshirt> _selectedTshirts = Tshirt.tshirtList;
    return _selectedTshirts.where((element) => element.isSelected == true).toList();
  }
}