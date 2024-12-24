class Artwork {
  final String title;
  final String artist;
  final String imageAsset;
  final String description;

  Artwork({
    required this.title,
    required this.artist,
    required this.imageAsset,
    required this.description,
  });
}

// Daftar karya seni untuk pameran
List<Artwork> artworkList = [
  Artwork(
    title: 'Impression, Sunrise',
    artist: 'Claude Monet',
    imageAsset: 'images/impression.jpg',
    description:
        'Lukisan ini adalah karya yang memberi nama kepada aliran impresionisme. Monet menggambarkan pemandangan pelabuhan Le Havre pada saat fajar dengan penggunaan warna cerah dan sapuan kuas yang longgar, menekankan cahaya dan atmosfer.',
  ),
  Artwork(
    title: 'The Scream',
    artist: 'Edvard Munch',
    imageAsset: 'images/scream.jpg',
    description:
        'Lukisan ini menggambarkan sosok yang teriak dengan latar belakang langit yang bergelombang dan warna-warna yang dramatis. The Scream menjadi simbol universal dari kecemasan dan ketidakpastian emosional.',
  ),
  Artwork(
    title: 'The Persistence of Memory',
    artist: 'Salvador Dalí',
    imageAsset: 'images/memory.jpg',
    description:
        'Lukisan ini menunjukkan jam leleh yang melambangkan relativitas waktu dan ketidakstabilan dunia mimpi. The Persistence of Memory adalah contoh khas dari aliran surealisme yang menggambarkan imajinasi dan ketidaklogisan dunia bawah sadar.',
  ),
  Artwork(
    title: 'The Stone Breakers',
    artist: 'Gustave Courbet',
    imageAsset: 'images/stone.jpg',
    description:
        'Lukisan ini menggambarkan dua pria yang sedang bekerja keras memecah batu di jalanan, menunjukkan kehidupan keras kelas pekerja pada abad ke-19. Ini adalah salah satu karya penting dalam gerakan realisme yang menolak idealisasi dan lebih fokus pada realitas sosial.',
  ),
  Artwork(
    title: 'The Calling of Saint Matthew',
    artist: 'Caravaggio',
    imageAsset: 'images/calling.jpg',
    description:
        'Lukisan ini menggambarkan momen saat Yesus memanggil Saint Matthew untuk mengikuti-Nya. Caravaggio menggunakan teknik chiaroscuro yang dramatis, menggabungkan cahaya dan bayangan untuk menciptakan efek emosional yang kuat.',
  ),
  Artwork(
    title: 'The Night Watch',
    artist: 'Rembrandt',
    imageAsset: 'images/night.jpg',
    description:
        'Lukisan ini menggambarkan sekelompok penjaga kota yang sedang bersiap untuk beraksi, dengan penggunaan cahaya dan bayangan yang dramatis khas gaya barok Rembrandt.',
  ),
  Artwork(
    title: 'Woman with a Hat',
    artist: 'Henri Matisse',
    imageAsset: 'images/woman.jpg',
    description:
        'Lukisan ini menunjukkan potret istrinya, Amélie, dengan warna-warna terang yang tidak realistis, menggunakan warna untuk mengekspresikan emosi dan bukan untuk menggambarkan objek dengan cara realistis. Ini adalah contoh utama dari aliran Fauvisme.',
  ),
  Artwork(
    title: 'Fountain',
    artist: 'Marcel Duchamp',
    imageAsset: 'images/fountain.jpg',
    description:
        'Fountain adalah sebuah karya yang menciptakan kontroversi besar. Ini adalah sebuah urinoir yang ditempatkan di galeri sebagai seni. Karya ini menentang konvensi seni tradisional dan dianggap sebagai tonggak utama dalam gerakan Dadaisme.',
  ),
  Artwork(
    title: 'Black Square',
    artist: 'Kazimir Malevich',
    imageAsset: 'images/black_square.jpg',
    description:
        'Black Square adalah salah satu karya paling terkenal dalam aliran minimalisme, yang menampilkan kotak hitam di atas latar putih. Lukisan ini mengundang diskusi tentang seni, bentuk, dan makna di balik kesederhanaan visual.',
  ),
  Artwork(
    title: 'A Sunday Afternoon on the Island of La Grande Jatte',
    artist: 'Georges Seurat',
    imageAsset: 'images/sunday.jpg',
    description:
        'Lukisan ini merupakan contoh utama dari teknik pointilisme, di mana Seurat menggunakan titik-titik warna yang diletakkan berdekatan untuk membentuk gambar utuh. Ini menggambarkan pemandangan kehidupan kota pada akhir abad ke-19.',
  ),
  Artwork(
    title: 'Composition VIII',
    artist: 'Wassily Kandinsky',
    imageAsset: 'images/composition.jpg',
    description:
        'Composition VIII adalah karya penting dalam seni abstrak, di mana Kandinsky menghindari representasi objek dunia nyata dan lebih fokus pada bentuk geometris dan warna untuk menciptakan komposisi visual yang penuh makna.',
  ),
];
