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
            'Jappy Agro Hand Weeder with 4 Foot Handle Manual Weeder for Agriculture Horticulture Gardening Weeds Cutting Remove Tools (7.5 Blade Size) 4 Foot Handle',
        price: '₹836',
        imageAsset: 'assets/images/tool1.png',
      ),
      Item(
        info:
            'Sharpex Heavy Duty Hand Weeder for Gardening | MS Powder Coated Body and Heat Treated 6 Inch Blade | Manual Weed Removal Hoe Equipment | Agriculture Tools for Farming (with Pole/Handle)',
        price: '₹819',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            ' FALCON FGHS-10 Hand Hoe Agriculture Equipment for Digging & Weeding Comfort Grip Handle Phawda Garden Tool for Home Gardening Farm Lands',
        price: '₹204',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'YUVCON Hoe Set for Gardening (5 Piece), Long Telescopic Handle, Strong Iron Metal attachments and Lightweight Handle Made of Strong Alloy, All in one Gardening Tool Set',
        price: '₹1,799',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'Sharpex Quick Bulb Planter Tool | Automatic Soil Release For Digging | Refilling Hole Ideal Bulb Transplanted Kit For Lawn And Garden Planting | Digging Tools for Soil (Sliver, Orange)',
        price: '₹522',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'TAD SOLID® 202 Grade Stainless Steel Big Spade for Gardening or Digging Heavy Duty Agriculture Tool (8.5X11X35)',
        price: '₹859',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'Cinagro Garden Tool Kit 3 Pieces - Garden Hoe, Garden Tiller & Garden Hand Hoe with 2 Prongs, Terrace Gardening Accessories, Gardening Tools Kit for Home Gardening, Farming Tools',
        price: '₹₹699',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'Kraft Seeds by 10CLUB Gardening Hand Tools Set - 5 Pieces (Cultivator, Big and Small Trowel, Weeder, Fork) | Tools for Home Garden | Durable Plant Tool Kit | Farming Tools',
        price: '₹299',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            ' HASTHIP® 5Pcs Gardening Tools for Garden Home Patio, Heavy Duty Aluminum Tools Set with Gardening Transplanting Spade, Cultivator, Pruner, Trowel and Gardening Gloves, Durable Gardening Accessories',
        price: ' ₹1,599',
        imageAsset: 'assets/images/tool2.png',
      ),
      Item(
        info:
            'MLA TOOLS Earth Auger Digger Drill Bit 6, 4,3, inch Daimter Agriculture Horticulture Gardening Tools (4 inch Daimter 2 Spiral)',
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
