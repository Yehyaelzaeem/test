part of 'test_cubit.dart';

@immutable
sealed class TestState {}

final class TestInitial extends TestState {}

/// GetInvoice State
final class GetInvoiceLoadingState extends TestState {}
final class GetInvoiceSuccessState extends TestState {
  final InvoiceDetailModel invoiceDetailModel;
  GetInvoiceSuccessState({required this.invoiceDetailModel});
}


/// Delete
final class DeleteInvoiceLoadingState extends TestState {}
final class DeleteInvoiceSuccessState extends TestState {}
final class ChangeState extends TestState {}


final class UnitsState extends TestState {}
