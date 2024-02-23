//import 'package:growise/pages/products.dart';
class Item {
  final String info;
  final String price;
  final String imageAsset;

  Item({
    required this.info,
    required this.price,
    required this.imageAsset,
  });
}

void main() {
  // Create a map to store items categorized by keys
  Map<String, List<Item>> categorizedItems = {
    'Tools': [
      Item(
        info:
            'Jappy Agro Hand Weeder with 4 Foot Handle Manual Weeder (7.5 Blade Size)',
        price: '₹836',
        imageAsset: 'assets/images/tool1.png',
      ),
      Item(
        info:
            'Sharpex Heavy Duty Hand Weeder MS Powder Coated Body and Heat Treated 6 Inch Blade)',
        price: '₹819',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            ' FALCON FGHS-10 Hand Hoe for Digging & Weeding Comfort Grip Handle Phawda Garden Tool',
        price: '₹204',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'YUVCON Hoe Set for Gardening (5 Piece), Long Telescopic Handle and Lightweight Handle Made of Strong Alloy',
        price: '₹1,799',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'Sharpex Quick Bulb Planter Tool, Refilling Hole Ideal Bulb Transplanted Kit For Lawn And Garden Planting',
        price: '₹522',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'TAD SOLID® 202 Grade Stainless Steel Big Spade for Gardening ',
        price: '₹859',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'Cinagro Garden Tool Kit 3 Pieces - Garden Hoe, Garden Tiller & Garden Hand Hoe with 2 Prongs',
        price: '₹₹699',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'Kraft Seeds by 10CLUB Gardening Hand Tools Set - 5 Pieces (Cultivator, Big and Small Trowel, Weeder, Fork)',
        price: '₹299',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            ' HASTHIP® 5Pcs Gardening Tools for Garden Home Patio, Cultivator, Pruner, Trowel and Gardening Gloves, Durable Gardening Accessories',
        price: ' ₹1,599',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'MLA TOOLS Earth Auger Digger Drill Bit 6, 4,3, inch Daimter ',
        price: '₹1,099',
        imageAsset: 'assets/images/tool2.png',
      ),
      // Add more items as needed
    ],
    'Seeds': [
      Item(
        info: 'Seed 1 information',
        price: '5.99',
        imageAsset: 'assets/images/seed1.png',
      ),
      Item(
        info: 'Seed 2 information',
        price: '8.99',
        imageAsset: 'assets/images/seed2.png',
      ),
      // Add more items as needed
    ],
    'Fungicide': [
      // Add fungicide items
    ],
    'Crop Protection': [
      // Add crop protection items
    ],
    'Irrigation Products': [
      // Add irrigation product items
    ],
    'Pesticide': [
      // Add pesticide items
    ],
  };
}
