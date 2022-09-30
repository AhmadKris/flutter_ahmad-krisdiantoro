import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  Gallery({super.key});

  final url = [
    "https://www.superlive.id/storage/superadventure/2018/12/19/2446ff65f01b.jpg",
    "https://asset.kompas.com/crops/8vfJFkHa95q-Jl6-URjkWNOcXRA=/0x0:1200x800/750x500/data/photo/2020/09/19/5f65a842d8d53.jpg",
    "https://img.alinea.id/crop/600x400/content/2020/07/23/81479/jalur-pendakian-gunung-sindoro-via-kledung-segera-dibuka-U0b2IIO75Q.jpg",
    "https://travelspromo.com/wp-content/uploads/2020/12/Landskap-gunung-merbabu-1024x768.jpg",
    "https://asset.kompas.com/crops/nsstDCb0jKgjVNCY0GnGLucnPe4=/0x0:1650x1100/750x500/data/photo/2021/06/17/60cabb1a66bb6.jpg",
    "https://i0.wp.com/id-velopedia.velo.com/wp-content/uploads/2021/07/pasted-image-0-7-4.png?fit=770%2C446&ssl=1",
    "https://asset.kompas.com/crops/_lrVFgFaAipknZwoc_xPAYdlwT0=/0x0:1500x1000/750x500/data/photo/2020/08/14/5f3616d7e1525.jpg",
    "https://1.bp.blogspot.com/-nspK8L2Y1bM/Xd82NzSr-tI/AAAAAAABQsE/AUH1iBQQWQoeoX9ulkWxriAhQjUTDNNpwCEwYBhgL/s1600/DSCF6120.JPG",
    "https://asset.kompas.com/crops/DDCjq7p0Ij2KZgN6doyeC6N__rU=/0x0:1200x800/780x390/data/photo/2021/10/29/617b85771aba7.jpg",
    "http://phinemo.com/wp-content/uploads/2016/04/gunung-gede-pangrango.jpg",
    "https://assets.promediateknologi.com/crop/0x0:0x0/750x500/photo/ketiknews/original/211014125851-Danau.jpg",
    "http://1.bp.blogspot.com/-9KbXeBGl6HY/VllCCYXjthI/AAAAAAAADMM/8LLnQ2q_RzA/s640/Argopuro.jpg",
    "https://asset.kompas.com/crops/WYcYPfavcrfsNzSm6bXugeuKloA=/0x0:740x493/750x500/data/photo/2021/03/27/605e9f16e805f.jpg",
    "https://phinemo.com/wp-content/uploads/2018/03/18096526_862710827213228_791911911192002560_n.jpg",
    "https://anekatempatwisata.com/wp-content/uploads/2015/05/Kejernihan-air-danau-di-Ranu-Kumbolo-1024x600.jpg",
    "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/04/16/1925408029.jpg",
    "https://seinenmanga.com/wp-content/uploads/2022/06/New-Ranking-of-Straw-Hat-Pirates-All-Crew-Members-after-Wano-Arc.jpg",
    "https://tintaresah.com/wp-content/uploads/2022/02/Solo-Leveling-Anime-1024x576-1.jpg",
    "https://cdn.mmoculture.com/mmo-images/2021/06/jujutsu-kaisen-scaled.jpeg",
    "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/03/18/3412017504.jpg",
    "https://cdn0-production-images-kly.akamaized.net/guaSwOjzSeCbrWnIhPZDn2n7Rno=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3278875/original/079595800_1603728453-Anime-Demon-Slayer-Kimetsu-no-Yaiba.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / .8,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              )),
              context: context,
              builder: (context) => Padding(
                padding: const EdgeInsets.all(10),
                child: Image(
                  image: NetworkImage(url[index]),
                ),
              ),
            );
          },
          onLongPress: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text(
                  'Alert Dialog',
                  textAlign: TextAlign.center,
                ),
                content: Image(
                  image: NetworkImage(url[index]),
                ),
                // actions: [
                //   TextButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     child: const Text('OK'),
                //   )
                // ],
              ),
            );
          },
          child: Ink.image(
            fit: BoxFit.cover,
            image: NetworkImage(url[index]),
          ),
        ),
        itemCount: url.length,
      ),
    );
  }
}
