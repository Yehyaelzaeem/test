class InvoiceBody{
  final int orderNo;
  final String name;
  final int unitNo;
  final double price;
  final double quantity;
  final double total;
  final DateTime creationDate;
  final UnitData unit;

  InvoiceBody(this.orderNo, this.name, this.unitNo, this.price, this.quantity,
      this.total, this.creationDate, this.unit);

  Map<String, dynamic> toJson() {
    return {
      "orderNo": orderNo,
      "name": name,
      "unitNo": unitNo,
      "price": price,
      "quantity": quantity,
      "total": total,
      "creationDate": creationDate.toIso8601String(),
      "unit": unit,
    };
  }
}
class UnitData {
   final int id;
   final String name;
   UnitData(this.id,this.name);

   Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
    };
  }
}