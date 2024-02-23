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
      info: 'TAD SOLID® 202 Grade Stainless Steel Big Spade for Gardening ',
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
      info: 'MLA TOOLS Earth Auger Digger Drill Bit 6, 4,3, inch Daimter ',
      price: '₹1,099',
      imageAsset: 'assets/images/tool2.png',
    ),
    // Add more items as needed
  ],
  'Seeds': [
    Item(
      info: 'High Yield Variety Special Wheat Seeds (Pbw 725), 40 Kg',
      price: '₹1399',
      imageAsset: 'assets/images/seed1.png',
    ),
    Item(
      info: 'Vedaka Premium Raw Pumpkin Seeds | Fibre rich 100g',
      price: '₹114',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'Vedaka Premium Raw Sunflower Seeds | 200 g',
      price: '₹105',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'UGAOO Improved Carrot Nantes Vegetable Seeds (Red, Pack of 2g)',
      price: '₹145',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'Royal Paradise Garden Rare Exotic 25 Tree seeds for Growing',
      price: '₹130',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'UGAOO Long Cucumber Vegetable Seed (Green, Pack of 1.2g)',
      price: '₹99',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'UGAOO Palak or Spinach Vegetable Seeds (Green, Pack of 16 g) 1700 Seeds',
      price: '₹100',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Nutmeg/Jaathi (Seedling) Fruit/Medicinal Live Plant (Home & Garden)',
      price: '₹199',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Nutmeg/Jaathi (Seedling) Fruit/Medicinal Live Plant (Home & Garden)',
      price: '₹199',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'ARKA ARJUN FRENCH BEANS HYBRID DISEASE RESISTANT VEGETABLE SEEDS (10 SEEDS)',
      price: '₹99',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Iagrifarm Moringa/Drumstick Seeds - PKM2 Variety - 1 Kg - Approx 3500 seeds',
      price: '₹2999',
      imageAsset: 'assets/images/seed2.png',
    ),

    // Add more items as needed
  ],
  'Fertilizers': [
    Item(
      info:
          'GACIL Potassium Sulphate NPK Fertilizer (K2SO4-0:0:50) | Water-Soluble White Free-Flow | 250 g',
      price: '₹312',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'BA Organic Vermicompost Fertilizer For Plants - 5Kg, Granules',
      price: '₹170',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Ugaoo Cow Dung Manure Fertilizers for Plants & Home Gardening - 5 kg',
      price: '₹349',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Ugaoo Neem Cake Powder for Plants 5 Kg - Organic Fertilizer & Pest Repellent',
      price: '₹399',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'Cocogarden Organic Steamed Bone Meal Fertilizer for Plants, 5 kg',
      price: '₹539',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'ORGANIC PLANT Rock Phosphate Fertilizer 5Kg For Fruit and Flowering Plants 5kg',
      price: '₹379',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Organic Plant Bio Organic Potash | Granular Potash Fertiliser for Vegetables, Fruits, Agriculture Crops ',
      price: '₹249',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Organic Potash Essential Fertilizer For Vegetables,Fruits,Flowers,Agriculture Crops,(1Kg), Powder ',
      price: '₹167',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Special Mono Zinc 33% Micro Nutrient Fertilizer Agriculture Grade (4 kg) ',
      price: '₹699',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'Foodicine Sil Stick 5 Ltr - Agricultural Sticking & Wetting Agent',
      price: '₹699',
      imageAsset: 'assets/images/seed2.png',
    ),

    // Add fungicide items
  ],
  'Crop Protection': [
    Item(
      info:
          'Suryoday Wires Fencing Chain Link Net For Fencing Wire Height 5 Feet Bundle Length: 50 Feet, Silver',
      price: '₹6080',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'UrbanKheti Fencing Clutch Wire for Boundary (Wire 2000 Meter (20 Kg) (1.5MM)',
      price: '₹4499',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'UTTAM Plastic Fencing Clutch Wire,Fencing (1000 Meter (10Kg)|Boundary Wire 1.5 Mm (Silver)(1000 Meter (10Kg))',
      price: '₹2599',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'SAI PRASEEDA UV Stabilized Garden Guarding Net, Feet Height X 5 Feet Length_Green Color_800 GSM with 1 Cutter and 50 PVC Tags',
      price: '₹499',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Shanti Nets Garden Shade Net, Multipurpose Shade Net/Agro Net/Green Net (Enclosure Material-50%) (6 X 5 FT)',
      price: '₹281',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'ABS And Copper PVC Agri Fencing Products, For Farm',
      price: '₹12500/Piece',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'GI Barbed Wire, Wire Diameter: 2 mm, Material: Iron, Surface Treatment: Galvanized, Barb Distance: 3 inches, Roll Weight: 40 kg',
      price: '₹62/Kg',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'Blue Mild Steel Solar Safety Fence, For Agriculture',
      price: '₹8000/Piece',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'Metal Silver Solar Fencing Wire',
      price: '₹80/Kg',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: '12feet Galvanized Iron Agri Fencing, For Control Fences',
      price: '₹350/Meter',
      imageAsset: 'assets/images/seed2.png',
    ),
    // Add crop protection items
  ],
  'Irrigation Products': [
    Item(
      info:
          'DIY Crafts Curved Arrow Dripper Kit,Irrigation Fittings 4L/8L Pressure Dripper Garden Accessories (360° Emmiter/Sprinkler) 30 Pcs',
      price: '₹424',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'AUTOMAT HT30G 1 inch Seagull RAIN Gun (ISI) Used for Irrigation, DUST SUPRESSION & Water Sprinkler in Agriculture',
      price: '₹1912',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Appster Threaded 5 INCH Venturi Set Farming Water Tube Fertilizer Injectors Device, 3/4'
          ' inch (Length : 5" Inch)',
      price: '₹349',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'APPSTER 12" Venturi Set Farming Water Tube Fertilizer Injectors Device, 2 Inch (63 Mm) | (Length : 12" Inch, Threaded)',
      price: '₹499',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Cinagro Plants Drip Irrigation Kit | Watering Kit (150 Plants Kit)',
      price: '₹1449',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'DIY Crafts 22 Meter, 1/4 PVC Pipe, Watering Tubing Hose 1/4 inch Garden Drip Pipe PVC Hose (22 Meter, 1/4 PVC Pipe)',
      price: '₹350',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Balwaan Krishi WP-33R Water Pump 3 Inch Outlet 7 HP Powerfull Petrol Engine 4 Stroke Max Discharge 1000-1200 liters/min, RPM 3600',
      price: '₹12,255',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'VAYAL IRRIGATIONS® Butterfly Sprinkler (Or) Sprayer 20 mm | 1/2 Inch | 360 Degree | 10-15 Feet Radius | Sprinkler Head Pack of 20',
      price: '₹494',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'XPR3SS Smart WiFi Remote Control from Anywhere Home & Garden Automatic Irrigation Compatible with Alexa & Google Assistant',
      price: '₹3499',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'FABITTO™ Drip Irrigation kit for Home Garden 100 Plants Automatic Watering System for Plants.',
      price: '₹1376',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'AGRIANSH Heavy duty 12v DC Battery Electric Portable Diaphragm Pump 220 PSI Double Motor Kit',
      price: '₹1,499',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Lukzer 3 Arm Sprinkler for Watering Garden Lawn Yard Irrigation System, 360 Degree Sprayer Head',
      price: '₹349',
      imageAsset: 'assets/images/seed2.png',
    ),

    // Add irrigation product items
  ],
  'Pesticide/Fungicides': [
    Item(
      info:
          'Sleep Well Trichoderma Harzanium Fungicide To Control Nematode In Green House Agriculture 1Kg',
      price: '₹410',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'IRAS GARDEN Cold Pressed Pure Neem Oil Spray Organic Fungicide and Pesticides 5 Liter',
      price: '₹2499',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Multipurpose Organic Pesticide Fungicide Miticide Insecticide (500 L)',
      price: '₹400',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Copper Sulphate Crystals (Neela Thotha) CuSo4 for Fungicide, Algaecide, Root killer, and herbicide(50)',
      price: '₹120',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: 'Syngenta Amistar Top Fungicide 100ml (Pack of 1)',
      price: '₹510',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Katyayani Tebusul Tebuconazole 10%+Sulphur 65% WG Effective Fungicide for fruit rot diseases of Chilli and pod blight disease of Soybean. (500 Grams)',
      price: '₹425',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Katyayani Mancozeb 75% Proactive nonsystemic Broad spectrum fungicide For Plants & Garden (8 KG (800g x 10))',
      price: '₹3999',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Chipku -Pure Cold Pressed, Water Soluble Insects neem Oil for Spray on Plants and Garden (250 ml)',
      price: '₹299',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info:
          'Katyayani Azoxystrobin 11% + Tebuconazole 18.3% SC Systemic Fungicide(5 Liter(Set of 20))',
      price: '₹17800',
      imageAsset: 'assets/images/seed2.png',
    ),
    Item(
      info: '. Saaf Fungicide 250gm + Stretch Surfactant 100ml | KUL Combo',
      price: '₹500',
      imageAsset: 'assets/images/seed2.png',
    ),

    // Add pesticide items
  ],
};
