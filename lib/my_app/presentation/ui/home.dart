import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_apis/my_app/presentation/logic/test_cubit.dart';
import 'package:test_apis/my_app/presentation/ui/widget/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TestCubit cubit =TestCubit.get(context);
    return Scaffold(
      body: BlocConsumer<TestCubit, TestState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 200,),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [BoxShadow(color: Colors.black54,blurRadius: 7)]
                            ),
                            width: 200,
                            child: CustomElevatedButton(
                              // isLoading: state is GetInvoiceLoadingState,
                              backgroundColor: Colors.blue.shade300,
                              onTap: (){
                                cubit.getInvoiceDetail();
                              },
                              buttonText: 'Home Page', fontColor:Colors.white
                            ),
                          ),
                        ),
                        const SizedBox(height: 25,),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [BoxShadow(color: Colors.black54,blurRadius: 7)]
                            ),
                            width: 200,
                            child: CustomElevatedButton(
                                // isLoading: state is GetInvoiceLoadingState,
                                backgroundColor: Colors.blue.shade300,
                              onTap: (){
                                cubit.getInvoiceDetail();
                              },
                              buttonText: 'Invoice Details', fontColor:Colors.white
                            ),
                          ),
                        ),
                        const SizedBox(height: 25,),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [BoxShadow(color: Colors.black54,blurRadius: 7)]
                            ),
                            width: 200,
                            child: CustomElevatedButton(
                                // isLoading: state is GetInvoiceLoadingState,
                                backgroundColor: Colors.blue.shade300,
                                onTap: (){
                                  cubit.getInvoiceDetail();
                                },
                                buttonText: 'Invoice List', fontColor:Colors.white
                            ),
                          ),
                        ),

                      ],
                    );
                },
              ),
    );
  }
}
