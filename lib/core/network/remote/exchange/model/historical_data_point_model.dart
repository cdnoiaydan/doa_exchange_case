class HistoricalDataPoint {
  final DateTime date;
  final double price;
  final String formattedPrice; // Formatlanmış fiyat

  HistoricalDataPoint({required this.date, required this.price})
      : formattedPrice = price.toStringAsFixed(4); // Constructor'da formatla
}
