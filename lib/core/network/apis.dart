class AppApis {

   static const String baseUrl ='http://appydev-001-site2.atempurl.com/';
   static const String invoiceDetail ='InvoiceDetail';
   static const String postInvoiceDetail ='InvoiceDetail';
   static const String putInvoiceDetail ='InvoiceDetail';
   static  String deleteInvoice(int orderNo) =>'InvoiceDetail?orderNo=$orderNo';
   static  String deleteUnit(int id) =>'Unit?unitId=$id';
   static const String postUnit ='Unit';
   static const String putUnit ='Unit';
   static const String getUnit ='Unit';

}