import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/core/utils/asset_provider.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  final List<Map<String, String>> shoes = [
    {'name': 'Shoe 1', 'description': 'Description of Shoe 1'},
    {'name': 'Shoe 2', 'description': 'Description of Shoe 2'},
    {'name': 'Shoe 3', 'description': 'Description of Shoe 3'},
    {'name': 'Shoe 4', 'description': 'Description of Shoe 4'},
    {'name': 'Shoe 5', 'description': 'Description of Shoe 5'},
    {'name': 'Shoe 6', 'description': 'Description of Shoe 6'},
    {'name': 'Shoe 7', 'description': 'Description of Shoe 7'},
    {'name': 'Shoe 8', 'description': 'Description of Shoe 8'},
    {'name': 'Shoe 9', 'description': 'Description of Shoe 9'},
    {'name': 'Shoe 10', 'description': 'Description of Shoe 10'},
    {'name': 'Shoe 11', 'description': 'Description of Shoe 11'},
    {'name': 'Shoe 12', 'description': 'Description of Shoe 12'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              // Banner
              Container(
                margin: EdgeInsets.all(8.0),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Image.asset(Assets.images.Banner, fit: BoxFit.fill)),
              ),
              // Grid View of Shoes
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: shoes.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    final shoe = shoes[index];
                    return Container(
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(8)),
                              image: DecorationImage(
                                image: AssetImage(
                                    Assets.images.Shoe), // Placeholder image
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  shoe['name']!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  shoe['description']!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
