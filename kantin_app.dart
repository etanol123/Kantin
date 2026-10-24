import 'package:flutter/material.dart';

final List<Map<String, dynamic>> categories = [
  {'name': 'Semua', 'icon': Icons.restaurant_menu},
  {'name': 'Makanan', 'icon': Icons.ramen_dining},
  {'name': 'Minuman', 'icon': Icons.local_drink},
  {'name': 'Snack', 'icon': Icons.fastfood},
  {'name': 'Promo', 'icon': Icons.local_offer},
];

final List<Map<String, dynamic>> products = [
  {
    'name': 'Nasi Goreng',
    'category': 'Makanan',
    'price': 15000,
    'rating': 4.8,
    'available': true,
    'image': 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=800',
  },
  {
    'name': 'Ayam Geprek',
    'category': 'Makanan',
    'price': 18000,
    'rating': 4.9,
    'available': true,
    'image': 'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?w=800',
  },
  {
    'name': 'Mie Ayam',
    'category': 'Makanan',
    'price': 12000,
    'rating': 4.7,
    'available': true,
    'image': 'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=800',
  },
  {
    'name': 'Es Teh Manis',
    'category': 'Minuman',
    'price': 5000,
    'rating': 4.6,
    'available': true,
    'image': 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=800',
  },
  {
    'name': 'Kopi Susu',
    'category': 'Minuman',
    'price': 10000,
    'rating': 4.8,
    'available': true,
    'image': 'https://images.unsplash.com/photo-1541167760496-1628856ab772?w=800',
  },
  {
    'name': 'Roti Bakar',
    'category': 'Snack',
    'price': 10000,
    'rating': 4.5,
    'available': false,
    'image': 'https://images.unsplash.com/photo-1521305916504-4a1121188589?w=800',
  },
];

class KantinApp extends StatelessWidget {
  const KantinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("KantinKampus", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Makan enak, harga bersahabat", style: TextStyle(fontSize: 11, color: Colors.grey)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://static.promediateknologi.id/crop/0x0:0x0/1200x0/webp/photo/p1/1061/2024/04/01/flat-lay-delicious-food-plate-1810170649.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(color: Colors.black.withOpacity(0.3)),
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "Promo hari ini",
                        style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 15,
                    child: const Text(
                      "Diskon hingga\n30%",
                      style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: 15,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.orange,
                      ),
                      onPressed: () {},
                      child: const Text("Lihat promo"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.local_shipping, color: Colors.orange),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Gratis Ongkir", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                          Text("Min. Rp30.000", style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.access_time, color: Colors.orange),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Buka Hari Ini", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                          Text("08.00 - 17.00", style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Kategori", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextButton(onPressed: () {}, child: const Text("Lihat Semua", style: TextStyle(color: Colors.orange))),
            ],
          ),
          const SizedBox(height: 8),

          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final cat = categories[index];
                final isSelected = index == 0;
                return Container(
                  width: 70,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.orange : Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(cat['icon'], color: isSelected ? Colors.white : Colors.orange),
                      const SizedBox(height: 4),
                      Text(
                        cat['name'],
                        style: TextStyle(
                          fontSize: 11,
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Menu Favorit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextButton(onPressed: () {}, child: const Text("Lihat Semua", style: TextStyle(color: Colors.orange))),
            ],
          ),
          const SizedBox(height: 8),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final p = products[index];
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.network(p['image'], fit: BoxFit.cover),
                            ),
                            Positioned(
                              top: 6,
                              left: 6,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.star, size: 12, color: Colors.orange),
                                    const SizedBox(width: 2),
                                    Text('${p['rating']}', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(p['name'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                          const SizedBox(height: 2),
                          Text(p['category'], style: const TextStyle(color: Colors.grey, fontSize: 10)),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rp${p['price']}", style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 12)),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Icon(Icons.add, color: Colors.white, size: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}