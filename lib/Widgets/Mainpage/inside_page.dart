import 'package:carapp/Widgets/Mainpage/search_bar.dart';
import 'package:carapp/Widgets/car_data/car_data1.dart';
import 'package:carapp/Widgets/car_data/car_data2.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'WELCOME',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "Search car",
                    border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Brands',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoriesList
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          color: Colors.white,
                          elevation: 7.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.network(e),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12.0, left: 12.0),
              child: Text(
                'Top Rated',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: toprated.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.7,
                      crossAxisCount: 2),
                  itemBuilder: (ctx, index) {
                    CarData1 singleProduct = toprated[index];
                    return Container(
                       decoration: BoxDecoration(
                         color: Colors.blueGrey.withOpacity(0.3),
                         borderRadius: BorderRadius.circular(12.0)
                       ),
                        child: Column(
                          children: [
                            Image.network(
                              singleProduct.picture,
                              height: 90,
                              width: 90,
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              singleProduct.brand,
                              style: const TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text('Price: /${singleProduct.price}'),
                            const SizedBox(
                              height: 30.0,
                            ),
                            SizedBox(
                              height: 45,
                              width:140,
                              child: OutlinedButton(
                                onPressed: () {
                                 
                                },

                                style: OutlinedButton.styleFrom(
                                  surfaceTintColor: Colors.deepPurple,
                                  shadowColor: Colors.blueGrey,
                                  
                                  side: const BorderSide(
                                    color: Colors.deepPurple,
                                    width: 2,
                                  ),
                                  disabledForegroundColor: 
                                  Colors.deepPurple.withOpacity(0.38)
                                ),
                                child: const Text("Buy",
                                style: TextStyle(
                                  color: Colors.deepPurple
                                ),
                                ),
                                
                              ),
                            ),
                          ],
                        ));
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message_rounded),
      ),
    );
  }
}

List<String> categoriesList = [
  "https://static.vecteezy.com/system/resources/previews/022/498/229/original/mercedes-benz-logos-popular-brands-of-cars-isolated-on-transparent-background-3d-render-free-png.png",
  "https://purepng.com/public/uploads/large/purepng.com-bmw-car-logologocar-brand-logoscarsbmw-car-logo-1701527428054l1xd2.png",
  "https://c8.alamy.com/comp/T6PR9H/volkswagen-black-vw-logo-corporate-identity-optional-white-background-germany-T6PR9H.jpg",
  "https://cdn.imgbin.com/19/25/5/imgbin-toyota-86-car-logo-general-motors-toyota-2NUtbKDSnr6ydnjdZjbP50Xag.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLuf15zeBK_pXoyxhubR0H-l4SSZLFfCmfPcvdGDqM-IIiKyfPBJsFEdd4NIWy-IO03Og&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9xYrQhYLihuAQyaE6YUCce3Hv4tQjd7q-Uw&usqp=CAU",
];

List<CarData1> toprated = [
  CarData1(
      brand: "Mercedes-Benz",
      carmake: "E-class",
      description: "Foreign used very clean",
      year: "2019",
      picture:
          "https://images.cars.com/cldstatic/wp-content/uploads/mercedes-benz-c300-2022-01-exterior-front-angle-scaled.jpg",
      price: "1200000",
      isFavourite: false),
  CarData1(
      brand: "Bmw",
      carmake: "M4 competition",
      description: "Foreign used with 12500 mileage on it",
      year: "2021",
      picture:
          "https://media.autoexpress.co.uk/image/private/s--X-WVjvBW--/f_auto,t_content-image-full-desktop@1/v1615200081/autoexpress/2021/03/BMW%20M4%20Competition%202021%20UK-18.jpg",
      price: "40,000,000",
      isFavourite: false),
  CarData1(
      brand: "Volkwagen",
      carmake: "Polo GTI",
      description: "Foreign used and neat interior",
      year: "2021",
      picture:
          "https://uploads.vw-mms.de/system/production/images/vwn/076/572/images/8fc64e1230b7fee77715ee3d23f88a8091bad920/DB2023AU00551_web_1600.jpg?1684311057",
      price: "5,000,000",
      isFavourite: false),
  CarData1(
      brand: "Toyota",
      carmake: "Rav4",
      description: "Foreign used a 2.5li V8",
      year: "2023",
      picture:
          "https://www.motortrend.com/uploads/sites/10/2022/05/2022-toyota-rav4-prime-xse-plug-in-hybrid-4wd-suv-angular-front.png",
      price: "50,000,000",
      isFavourite: false),
];
