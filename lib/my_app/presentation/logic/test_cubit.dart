import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../model/invoice_body.dart';
import '../../model/invoice_details_model.dart';
import '../data/remote_data_source.dart';

part 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial());
  static TestCubit get(BuildContext context )=>BlocProvider.of(context);
  RemoteDataSource remoteDataSource =RemoteDataSource();

  Future<void> getInvoiceDetail()async{
   var res = await remoteDataSource.getInvoiceDetail();
   emit(GetInvoiceLoadingState());
  }

  Future<void> postInvoiceDetail(InvoiceBody invoiceBody)async{
   var res = await remoteDataSource.postInvoiceDetail(invoiceBody);
   emit(GetInvoiceLoadingState());
  }

  Future<void> putInvoiceDetail(InvoiceBody invoiceBody)async{
   var res = await remoteDataSource.putInvoiceDetail(invoiceBody);
    emit(GetInvoiceLoadingState());
  }

  Future<void> deleteInvoiceDetail(int orderNo)async{
    emit(DeleteInvoiceLoadingState());
   var res = await remoteDataSource.deleteInvoiceDetail(orderNo);
     emit(DeleteInvoiceSuccessState());
  }


/// Unit
  Future<void> postUnit(UnitData unit)async{
    var res = await remoteDataSource.postUnit(unit);
    emit(UnitsState());
  }
  Future<void> putUnit(UnitData unit)async{
    var res = await remoteDataSource.putUnit(unit);
    emit(UnitsState());
  }
  Future<void> deleteUnit(int id)async{
    var res = await remoteDataSource.deleteUnit(id);
    emit(UnitsState());
  }
  Future<void> getUnit( )async{
    var res = await remoteDataSource.getUnit();
    emit(UnitsState());
  }
}
