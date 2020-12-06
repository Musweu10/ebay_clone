// class Product{
//   final String imageUrl;
//   final String name;
//   final double price;
//   final String description;

//   Product(this.imageUrl, this.name, this.price, this.description);

// }
import 'package:flutter/material.dart';

class Product {
  final String image, title, description, description2, description4;
  final int price, size, id;
  final Color color;
  Product({
    this.description2,
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
    this.description4,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Galaxy A10s",
      price: 234,
      size: 12,
      description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/a10.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 2,
      title: "Galaxy A20s",
      price: 234,
      size: 8,
      description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/a10 back.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 3,
      title: "IPhone 12",
      price: 234,
      size: 10,
      description2:
          "IPhone 12 10GB 2GB RAM 5 Inch Screen Display no Charging Brick",
      description: dummyText,
      image: "assets/images/iphone12.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 4,
      title: "Galaxy A10",
      price: 234,
      size: 11,
      description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/a10 back.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 5,
      title: "Huawei",
      price: 234,
      size: 12,
      description2: "Huawei P 20 Ultra Black 128GB 4GB RAM",
      description: dummyText,
      image: "assets/images/huawei.png",
      color: Color(0x66D4D4D4)),
  Product(
    id: 6,
    title: "IPhone X",
    price: 140,
    size: 12,
    description2:
        "IPhone X 12GB 2GB RAM 4 Inch Screen Display No HeadPhone Jack",
    description: dummyText,
    image: "assets/images/iphonex.png",
    color: Color(0x66D4D4D4),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

List<Product> product2 = [
  Product(
      id: 7,
      title: "Rolex",
      price: 404,
      size: 12,
      description2: "Rolex",
      description: dummyText,
      image: "assets/images/rolex.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 8,
      title: "Sneaker",
      price: 234,
      size: 8,
      description2: "Sneaker",
      description: dummyText,
      image: "assets/images/sneaker.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 9,
      title: "Galaxy A30",
      price: 234,
      size: 10,
      description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/a10.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 10,
      title: "Citizen",
      price: 234,
      size: 11,
      description2: "Citizen",
      description: dummyText,
      image: "assets/images/citizen.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 11,
      title: "Galaxy A40",
      price: 234,
      size: 12,
      description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/a10.png",
      color: Color(0x66D4D4D4)),
  Product(
    id: 12,
    title: "Bag",
    price: 134,
    size: 12,
    description2: "Blue Hand Bag",
    description: dummyText,
    image: "assets/images/bag_1.png",
    color: Color(0x66D4D4D4),
  ),
];

List<Product> product3 = [
  Product(
      id: 13,
      title: "eBay 25th",
      price: 234,
      size: 12,
      description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/a10.png",
      color: Color(0x66E9A7C6)),
  Product(
      id: 14,
      title: "Sneakers",
      price: 234,
      size: 8,
      description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/sneaker2.png",
      color: Color(0x66E9A7C6)),
  Product(
      id: 15,
      title: "Korean beauty",
      price: 234,
      size: 10,
      description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/kb1.png",
      color: Color(0x66E9A7C6)),
  Product(
      id: 16,
      title: "Wristwatches",
      price: 234,
      size: 11,
      description2: "WB",
      description: dummyText,
      image: "assets/images/wb.png",
      color: Color(0x66E9A7C6)),
  Product(
      id: 17,
      title: "Collectibles",
      price: 234,
      size: 12,
      description2: "Rich Dad Poor Dad",
      description: dummyText,
      image: "assets/images/book.png",
      color: Color(0x66E9A7C6)),
  Product(
    id: 18,
    title: "Smartphones",
    price: 234,
    size: 12,
    description2: "Samsung Galaxy A10s Black 32GB 2GB RAM",
    description: dummyText,
    image: "assets/images/smartphones.png",
    color: Color(0x66E9A7C6),
  ),
];

List<Product> product4 = [
  Product(
      id: 1,
      title: "Galaxy A10s",
      price: 234,
      size: 12,
      description4:
          "Samsung Galaxy A10s Black 32GB 2GB RAM 5.2 inch Dual Camera Googleplay Phone",
      description: dummyText,
      image: "assets/images/a10.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 2,
      title: "Galaxy A20s",
      price: 234,
      size: 8,
      description4: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/a10 back.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 3,
      title: "IPhone 12",
      price: 234,
      size: 10,
      description4: "IPhone12 10GB 2GB RAM",
      description: dummyText,
      image: "assets/images/iphone12.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 4,
      title: "Galaxy A10",
      price: 234,
      size: 11,
      description4: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/a10 back.png",
      color: Color(0x66D4D4D4)),
  Product(
      id: 5,
      title: "Huawei",
      price: 234,
      size: 12,
      description4: "Samsung Galaxy A10s Black 32GB 2GB RAM",
      description: dummyText,
      image: "assets/images/huawei.png",
      color: Color(0x66D4D4D4)),
  Product(
    id: 6,
    title: "IPhone X",
    price: 234,
    size: 12,
    description4: "Phone X 12GB 2GB RAM",
    description: dummyText,
    image: "assets/images/iphonex.png",
    color: Color(0x66D4D4D4),
  ),
];
