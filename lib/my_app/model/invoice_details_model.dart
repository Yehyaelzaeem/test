class InvoiceDetailModel {
  String? orderNo;
  String? name;
  Unit? unit;
  String? unitNo;
  String? price;
  String? quantity;
  String? total;
  String? creationDate;

  InvoiceDetailModel(
      {this.orderNo,
        this.name,
        this.unit,
        this.unitNo,
        this.price,
        this.quantity,
        this.total,
        this.creationDate});

  InvoiceDetailModel.fromJson(Map<String, dynamic> json) {
    orderNo = json['orderNo'];
    name = json['name'];
    unit = json['unit'] != null ?  Unit.fromJson(json['unit']) : null;
    unitNo = json['unitNo'];
    price = json['price'];
    quantity = json['quantity'];
    total = json['total'];
    creationDate = json['creationDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['orderNo'] = orderNo;
    data['name'] = name;
    if (unit != null) {
      data['unit'] = unit!.toJson();
    }
    data['unitNo'] = unitNo;
    data['price'] = price;
    data['quantity'] = quantity;
    data['total'] = total;
    data['creationDate'] = creationDate;
    return data;
  }
}

class Unit {
  String? id;
  String? name;

  Unit({this.id, this.name});

  Unit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
