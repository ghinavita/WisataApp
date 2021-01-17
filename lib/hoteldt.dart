class ListHotel {
  List<Hotel> hotel;

  ListHotel({this.hotel});

  ListHotel.fromJson(Map<String, dynamic> json) {
    if (json['hotel'] != null) {
      hotel = new List<Hotel>();
      json['hotel'].forEach((v) {
        hotel.add(new Hotel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hotel != null) {
      data['hotel'] = this.hotel.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hotel {
  int id;
  String nama;
  String alamat;
  String nomorTelp;
  String kordinat;
  String gambarUrl;

  Hotel(
      {this.id,
        this.nama,
        this.alamat,
        this.nomorTelp,
        this.kordinat,
        this.gambarUrl});

  Hotel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    alamat = json['alamat'];
    nomorTelp = json['nomor_telp'];
    kordinat = json['kordinat'];
    gambarUrl = json['gambar_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['alamat'] = this.alamat;
    data['nomor_telp'] = this.nomorTelp;
    data['kordinat'] = this.kordinat;
    data['gambar_url'] = this.gambarUrl;
    return data;
  }
}
