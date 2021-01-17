class ListKuliner {
  List<Kuliner> kuliner;

  ListKuliner({this.kuliner});

  ListKuliner.fromJson(Map<String, dynamic> json) {
    if (json['kuliner'] != null) {
      kuliner = new List<Kuliner>();
      json['kuliner'].forEach((v) {
        kuliner.add(new Kuliner.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.kuliner != null) {
      data['kuliner'] = this.kuliner.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kuliner {
  int id;
  String nama;
  String alamat;
  String jamBukaTutup;
  String kordinat;
  String gambarUrl;
  String kategori;

  Kuliner(
      {this.id,
        this.nama,
        this.alamat,
        this.jamBukaTutup,
        this.kordinat,
        this.gambarUrl,
        this.kategori});

  Kuliner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    alamat = json['alamat'];
    jamBukaTutup = json['jam_buka_tutup'];
    kordinat = json['kordinat'];
    gambarUrl = json['gambar_url'];
    kategori = json['kategori'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['alamat'] = this.alamat;
    data['jam_buka_tutup'] = this.jamBukaTutup;
    data['kordinat'] = this.kordinat;
    data['gambar_url'] = this.gambarUrl;
    data['kategori'] = this.kategori;
    return data;
  }
}
