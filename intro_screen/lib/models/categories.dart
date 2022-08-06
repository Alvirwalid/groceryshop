class Category {
  String? img;
  String? name;
  String? img2;
  String? name2;
  String? price;
  String? weight;

  Category(
      {this.img, this.name, this.img2, this.name2, this.price, this.weight});

  static List<Category> CategoryList() {
    return [
      Category(
          img: './images/category/burger.jpg',
          img2: './images/category/apple.jpg',
          name: 'Burger',
          name2: 'Red Apple',
          price: '\$220',
          weight: '1kg,indian'),
      Category(
          img: './images/category/butter.jpg',
          img2: './images/category/banana.jpg',
          name: 'Butter',
          name2: 'Banana',
          price: '\$180',
          weight: '1kg,indian'),
      Category(
          img: './images/category/coke.jpg',
          img2: './images/category/chiken.jpg',
          name: 'Beverages',
          name2: 'Chiken',
          price: '\$856',
          weight: '1kg,indian'),
      Category(
          img: './images/category/drinks.jpg',
          img2: './images/category/fish1.jpg',
          name: 'Drinks',
          name2: 'Fish',
          price: '\$220',
          weight: '1kg,indian'),
      Category(
          img: './images/category/egg.jpg',
          img2: './images/category/mango.jpg',
          name: 'Eggs',
          name2: 'Mango',
          price: '\$564',
          weight: '1kg,indian'),
      Category(
          img: './images/category/fish.jpg',
          img2: './images/category/pineapple.jpg',
          name: 'Fish',
          name2: 'PineApple',
          price: '\$187',
          weight: '1kg,indian'),
      Category(
          img: './images/category/meat.jpg',
          img2: './images/category/apple.jpg',
          name: 'Meat',
          name2: 'Apple',
          price: '\$987',
          weight: '1kg,indian'),
    ];
  }
}
