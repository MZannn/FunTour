class TourModels {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String locationOn;
  final double rate;
  final int price;
  List<String>? imagePath;

  TourModels({
    required this.id,
    required this.picturePath,
    required this.name,
    required this.description,
    required this.locationOn,
    required this.rate,
    required this.price,
    this.imagePath,
  });
}

List<TourModels> mockTour = [
  TourModels(
    id: 1,
    picturePath:
        "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcR_rYbIhqq4zwJt7o9FJmTKEXGr_6Ysc_P12wbOPGurumk5XoLPnkAUGNoudlDstYk26gr72ZScYsWVJdvr1PYJYg",
    name: "Floating Market Lembang",
    description:
        "Pasar apung tempat makanan, camilan lokal & barang seperti pakaian dijajakan oleh pedagang dengan perahu.",
    locationOn: "Lembang",
    rate: 4.3,
    price: 75000,
    imagePath: [
      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQ2uOMqUzE9G_rtVKusKBM6vSTCw8e8g2X21A_D6CWj7FFoO4WD1LcZuVy9mGWIb44P6sJEgvIZoGjaZV1nR1wToA",
      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTYFv1YyadXjETtt9sYlkMcdwa-BXLGabLRDvOIoigS3F4OntCYbBrdUKcu22f-ss8QSAXtot9kifTC70I_aOCsCQ",
      "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTwHy18C14TeTffTS3w2jHsNvAxHo9yc1yLn-_rPJerPng-OxsHKzmUlAYepLCOaGJs3AQx1NxDz6s4EzTCPb_4vA"
    ],
  ),
  TourModels(
    id: 2,
    picturePath:
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcROT_O8mw8ACPB8KKTSLCh4V7Z_29Vex3dBpWlZwL8egN97Z60lX9SznhiKWeh3tdaNqKFcslX6hlPkg7rOB7f4hw",
    name: "Gunung Tangkuban Parahu",
    description:
        "Gunung Tangkuban Parahu adalah salah satu gunung yang terletak di Provinsi Jawa Barat, Indonesia. Sekitar 20 km ke arah utara Kota Bandung, dengan rimbun pohon pinus dan hamparan kebun teh di sekitarnya, Gunung Tangkuban Parahu mempunyai ketinggian setinggi 2.084 meter. Bentuk gunung ini adalah Stratovulcano dengan pusat erupsi yang berpindah dari timur ke barat. Jenis batuan yang dikeluarkan melalui letusan kebanyakan adalah lava dan sulfur, mineral yang dikeluarkan adalah sulfur belerang, mineral yang dikeluarkan saat gunung tidak aktif adalah uap belerang. Daerah Gunung Tangkuban Parahu dikelola oleh Perum Perhutanan. Suhu rata-rata hariannya adalah 17ᵒC pada siang hari dan 2 °C pada malam hari. Gunung Tangkuban Parahu mempunyai kawasan hutan Dipterokarp Bukit, hutan Dipterokarp Atas, hutan Montane, dan Hutan Ericaceous atau hutan gunung",
    locationOn: "Bandung",
    rate: 4.5,
    price: 100000,
    imagePath: [
      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRb9CNJkIxUTW-c_kgKazv2Tm-fPzNg1SDc5IWc3YH3NmFprvPDmB_M5cOBHNzO5jfY5i_YTfVRTUPxFCFoEUEBrw",
      "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTmyuPiedgEgyy7jfRHXDzLgJtvRjpunpHZMNCLrb8HPtEbIywD2EGnCR6fcNtWad8H1auzpYU4FjHKK0b4vtLSxg"
    ],
  ),
  TourModels(
    id: 3,
    picturePath:
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQdWmZhVkLyHB0Yq_7naGoswH8SQag_ulvUmAewOmWKAARNWYveiO4reN_894LzfzDPoR15oBXP3LTJbyo1VBQkTg",
    name: "Kawah Putih",
    description:
        "Kawah Putih adalah sebuah tempat wisata di Jawa Barat yang terletak di Desa Alam Endah, Kecamatan Rancabali, Kabupaten Bandung Jawa Barat yang terletak di kaki Gunung Patuha. Kawah putih merupakan sebuah danau yang terbentuk dari letusan Gunung Patuha. Tanah yang bercampur belerang di sekitar kawah ini berwarna putih, lalu warna air yang berada di kawah ini berwarna putih kehijauan, yang unik dari kawah ini adalah airnya kadang berubah warna. Danau Kawah Putih sendiri berada pada ketinggian 2194 m tapi luas total Danau Kawah Putih 25 ha yang dipakai wisata 5 ha dan lokasi kawah sendiri 3 ha. Perairannya yang berwarna biru kristal berubah dengan kondisi cuaca, dan dilapisi dengan pasir putih halus, memberikan pengunjung pengalaman dunia lain. Bahkan vegetasi di sekitar area ini sangat berbeda dengan yang di bawah.",
    locationOn: "Bandung",
    rate: 4.5,
    price: 150000,
    imagePath: [
      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcT13lFT04hFLLr6zQCr0tbPpOT8gnwaJwkIyZpQuniz3A8zqw1CgWDOk0EJItTu5gZoevfENPm7nn5-hMrYhnNC6A",
      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSvyCly38LraTr5VVdwCIfGXd3QjlW0X6g5jlp0VOm05o6KHgB23xmNoWFGEi0E0Gu9hIl14dc0SOaghaqgHtxvlQ",
      "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRoQ-1L2AtULNI0VmDMgPiJIifXgsyztqiMzAEOzCB96o2d-MerRMDOJ3j8eKY_orizxW4i_MBB8jOjWHpCeNKSDg"
    ],
  ),
  TourModels(
    id: 3,
    picturePath:
        "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTxPvOvpWOe73t_z2JpxLF8l2Zb45wGv2Hramta9Qo5i4U4d8EAA5JfLieTdrIuSvO_-mUZ2sTPc_UX8GIM6PdlPg",
    name: "Candi Prambanan",
    description:
        "Candi Prambanan atau Candi Roro Jonggrang adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi. Candi ini dipersembahkan untuk Trimurti, tiga dewa utama Hindu yaitu dewa Brahma sebagai dewa pencipta, dewa Wisnu sebagai dewa pemelihara, dan dewa Siwa sebagai dewa pemusnah. Berdasarkan prasasti Siwagrha nama asli kompleks candi ini adalah Siwagrha, dan memang di garbagriha candi ini bersemayam arca Siwa Mahadewa setinggi tiga meter, dikarenakan aliran Syaiwa yang mengutamakan pemujaan dewa Siwa di candi ini. Kompleks percandian Candi Prambanan secara keseluruhan berada di wilayah provinsi Daerah Istimewa Yogyakarta, namun pintu administrasinya berada di Jawa Tengah, hal ini yang membuat Candi Prambanan terletak di 2 tempat yakni di kelurahan Bokoharjo, kapanéwon Prambanan, kabupaten Sleman, Daerah Istimewa Yogyakarta, dan di desa Tlogo, kecamatan Prambanan, kabupaten Klaten, Jawa Tengah, atau kurang lebih 17 kilometer timur laut dari kota Jogja, 50 kilometer barat daya dari kota Surakarta dan 120 kilometer selatan dari kota Semarang, persis di perbatasan antara Daerah Istimewa Yogyakarta dan Jawa Tengah.",
    locationOn: "Yogyakarta",
    rate: 4.7,
    price: 150000,
    imagePath: [
      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS_5hZ-p4BFPiZ4aEy6xvUNpCU3q7IdJsQ_DFAy4merN6o1JJ1t6njEjKnU2VyxqH8Hcf4boCp2P08SvqsWE4OXxw",
      "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcT6RQJ68LFOqQj_zt9n03TEi37xnpOHG3m5kSatQx7saHE5QM7eXPt3tbo-5glfLybf_YFJtmWZMb71F4fxNeWYig",
      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQa6Quen0WdnFozBsiP81SqKbui3YdhQiMnAx4mzArBpfcOnXP9a4z1gH6BoqzV_LiMQHkJ2gRpQDccsk4EsJwQVw",
      "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTMTJAzZ4vL_cTiuMc6r-BbXJ7zytnJO5EnTCVI17x48CNUzOPER6SKoatZACAvJNMVHN1LYDjpqkkj7x3XoXLjig",
      "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcTn5HHazs4SXU7dQEVe-Iby6gjeefxdAis_Xv0qfnBfop1zaf0ECSn4zhDwqwJ7hBL3CAwEVeottOKPT3jq47KlHQ ",
    ],
  ),
];
