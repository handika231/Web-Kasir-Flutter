import 'package:equatable/equatable.dart';

class Inventory extends Equatable {
  final int nomorNota;
  final String date;
  final String statusPerpanjangan;
  final String nameItem;
  final String nominalGadai;
  final String kelengkapan;
  final String minus;
  final String status;
  //constructor
  const Inventory({
    required this.nomorNota,
    required this.date,
    required this.statusPerpanjangan,
    required this.nameItem,
    required this.nominalGadai,
    required this.kelengkapan,
    required this.minus,
    required this.status,
  });

  @override
  List<Object?> get props => [
        nomorNota,
        date,
        statusPerpanjangan,
        nameItem,
        nominalGadai,
        kelengkapan,
        minus,
        status
      ];
}

List<Inventory> dataListInventory = [
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  ),
  const Inventory(
    nomorNota: 8680,
    date: '22 Agustus 2022',
    statusPerpanjangan: 'P1',
    nameItem: 'Laptop Acer Nitro',
    nominalGadai: '3.000.000',
    kelengkapan: 'Dus, Charger',
    minus: 'Lecet Pemakaian',
    status: 'Lelang',
  )
];
