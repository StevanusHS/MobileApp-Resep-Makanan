import 'package:app_menu_makanan/detail_resep.dart';
import 'package:flutter/material.dart';
import 'package:app_menu_makanan/homePage.dart';
import 'package:app_menu_makanan/profile.dart';
import 'package:app_menu_makanan/resep_saya.dart';
import 'package:app_menu_makanan/tambah_resep.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Resep',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DaftarRecipe(),
    );
  }
}

class DaftarRecipe extends StatefulWidget {
  const DaftarRecipe({Key? key}) : super(key: key);

  @override
  _DaftarRecipeState createState() => _DaftarRecipeState();
}

class _DaftarRecipeState extends State<DaftarRecipe> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Resep'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.green),
                      onPressed: () {
                        // Aksi saat tombol search diklik
                        print('Search button clicked');
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'All';
                      });
                      // Aksi saat kotak kategori di klik
                      print('All category clicked');
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCategory == 'All' ? Colors.green : null,
                      ),
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: selectedCategory == 'All'
                              ? Colors.white
                              : Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Simple';
                      });
                      // Aksi saat kotak kategori di klik
                      print('Simple category clicked');
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color:
                            selectedCategory == 'Simple' ? Colors.green : null,
                      ),
                      child: Text(
                        'Simple',
                        style: TextStyle(
                          color: selectedCategory == 'Simple'
                              ? Colors.white
                              : Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Breakfast';
                      });
                      // Aksi saat kotak kategori di klik
                      print('Breakfast category clicked');
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCategory == 'Breakfast'
                            ? Colors.green
                            : null,
                      ),
                      child: Text(
                        'Breakfast',
                        style: TextStyle(
                          color: selectedCategory == 'Breakfast'
                              ? Colors.white
                              : Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Lunch';
                      });
                      // Aksi saat kotak kategori di klik
                      print('Lunch category clicked');
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color:
                            selectedCategory == 'Lunch' ? Colors.green : null,
                      ),
                      child: Text(
                        'Lunch',
                        style: TextStyle(
                          color: selectedCategory == 'Lunch'
                              ? Colors.white
                              : Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Dinner';
                      });
                      // Aksi saat kotak kategori di klik
                      print('Dinner category clicked');
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color:
                            selectedCategory == 'Dinner' ? Colors.green : null,
                      ),
                      child: Text(
                        'Dinner',
                        style: TextStyle(
                          color: selectedCategory == 'Dinner'
                              ? Colors.white
                              : Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'All Recipe',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 240,
              child: ListView(
                padding: const EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 180,
                    margin: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/nasgor.png',
                              width: 120,
                              height: 120,
                            ),
                            const SizedBox(height: 10),
                            const Text('Nasi Goreng'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    margin: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/nasgor.png',
                              width: 120,
                              height: 120,
                            ),
                            const SizedBox(height: 10),
                            const Text('Nasi Goreng'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Tambahkan card menu lainnya di sini
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 240,
              child: ListView(
                padding: const EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 180,
                    margin: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/nasgor.png',
                              width: 120,
                              height: 120,
                            ),
                            const SizedBox(height: 10),
                            const Text('Nasi Goreng'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    margin: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/nasgor.png',
                              width: 120,
                              height: 120,
                            ),
                            const SizedBox(height: 10),
                            const Text('Nasi Goreng'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Tambahkan card menu lainnya di sini
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol home diklik
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            IconButton(
              icon: Icon(Icons.restaurant_menu, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol restaurant_menu diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DaftarRecipe()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol add diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddRecipePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.receipt, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol receipt diklik
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyRecipe()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol person diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
