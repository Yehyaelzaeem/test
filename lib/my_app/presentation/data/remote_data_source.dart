
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import '../../../core/network/apis.dart';
import '../../../core/network/dio.dart';
import '../../model/invoice_body.dart';
import 'package:dio/src/response.dart';


class RemoteDataSource {

   Future<dynamic> postInvoiceDetail(InvoiceBody invoiceBody)async{
      Response<dynamic> res = await DioHelper.postData(
         url: AppApis.postInvoiceDetail,
         data: invoiceBody.toJson()
        );
      try{
         if(res.statusCode ==200){
            debugPrint(json.encode(res.data));
            debugPrint('Successfully');
            // return InvoiceDetailModel.fromJson(res.data);
         }else{
            debugPrint('api return Error Code : ${res.statusCode}');
         }
      }catch (e){
         debugPrint('Error GetInvoiceDetail : ${e.toString()}');
      }
   }
   Future<dynamic> getInvoiceDetail()async{
      debugPrint('start');
      Response<dynamic> res = await DioHelper.getData(
         url: AppApis.invoiceDetail,
        );
      try{
         if(res.statusCode ==200){
            debugPrint(json.encode(res.data));
            // return InvoiceDetailModel.fromJson(res.data);
         }else{
            debugPrint('api return Error Code : ${res.statusCode}');
         }
      }catch (e){
         debugPrint('Error GetInvoiceDetail : ${e.toString()}');
      }
   }
   Future<dynamic> deleteInvoiceDetail(int orderNo)async{
      Response<dynamic> res = await DioHelper.deleteData(
         url: AppApis.deleteInvoice(orderNo),
        );
      try{
         if(res.statusCode ==200){
            debugPrint(json.encode(res.data));
            debugPrint('Delete Successfully');
            return res;
         }else{
            debugPrint('api return Error Code : ${res.statusCode}');
         }
      }catch (e){
         debugPrint('Error GetInvoiceDetail : ${e.toString()}');
      }
   }
   Future<dynamic> putInvoiceDetail(InvoiceBody invoiceBody)async{
      Response<dynamic> res = await DioHelper.putData(
         url: AppApis.putInvoiceDetail,
         data: invoiceBody.toJson(),
        );
      try{
         if(res.statusCode ==200){
            debugPrint(json.encode(res.data));
            debugPrint('Put Data Successfully');
            return res;
         }else{
            debugPrint('api return Error Code : ${res.statusCode}');
         }
      }catch (e){
         debugPrint('Error GetInvoiceDetail : ${e.toString()}');
      }
   }


   Future<dynamic> postUnit(UnitData unitData)async{
      Response<dynamic> res = await DioHelper.postData(
          url: AppApis.postUnit,
          data: unitData.toJson()
      );
      try{
         if(res.statusCode ==200){
            debugPrint(json.encode(res.data));

            debugPrint('Successfully');
            // return InvoiceDetailModel.fromJson(res.data);
         }else{
            debugPrint('api return Error Code : ${res.statusCode}');
         }
      }catch (e){
         debugPrint('Error GetInvoiceDetail : ${e.toString()}');
      }
   }
   Future<dynamic> putUnit(UnitData unitData)async{
      Response<dynamic> res = await DioHelper.putData(
          url: AppApis.putUnit,
          data: unitData.toJson()
      );
      try{
         if(res.statusCode ==200){
            debugPrint('Successfully');
            debugPrint(json.encode(res.data));
            // return InvoiceDetailModel.fromJson(res.data);
         }else{
            debugPrint('api return Error Code : ${res.statusCode}');
         }
      }catch (e){
         debugPrint('Error GetInvoiceDetail : ${e.toString()}');
      }
   }
   Future<dynamic> getUnit()async{
      Response<dynamic> res = await DioHelper.getData(
          url: AppApis.getUnit,
      );
      try{
         if(res.statusCode ==200){
            debugPrint(json.encode(res.data));
            // return UnitModel.fromJson(res.data);
         }else{
            debugPrint('api return Error Code : ${res.statusCode}');
         }
      }catch (e){
         debugPrint('Error GetInvoiceDetail : ${e.toString()}');
      }
   }
   Future<dynamic> deleteUnit(int id)async{
      Response<dynamic> response = await DioHelper.deleteData(
          url: AppApis.deleteUnit(id),
      );
      try{
         if (response.statusCode == 200) {
            debugPrint(json.encode(response.data));
         }
         else {
            debugPrint(response.statusMessage);
         }
      }catch (e){
         debugPrint('Error GetInvoiceDetail : ${e.toString()}');
      }
   }

}