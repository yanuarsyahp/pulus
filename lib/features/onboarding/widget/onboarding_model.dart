class Onboard {
  final String image, title, desc;
  Onboard({required this.image, required this.title, required this.desc});
}

final List<Onboard> data = [
  Onboard(
    image: 'assets/images/illustration1.png',
    title: 'Selamat datang di\naplikasi Pulus',
    desc:
        "Mari berkontribusi untuk\nDesa Ciherang yang lebih bersih.\nMari mulai daur ulang!",
  ),
  Onboard(
    image: 'assets/images/illustration2.png',
    title: 'Manfaatkan limbah\ndi sekitar kita!',
    desc:
        "Setelah digunakan, banyak lho barang\nyang masih memilki nilai.\nAyo manfaatkan!",
  ),
  Onboard(
    image: 'assets/images/illustration3.png',
    title: "Kepul sekarang dan\ndapet fulus!",
    desc:
        "Dengan me-ngepul limbah\nbisa dapet fulus.\nMakin sering, rezeki makin mulus!",
  ),
];
