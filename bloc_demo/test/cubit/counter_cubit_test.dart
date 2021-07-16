// import 'package:bloc_demo/logic/cubit/counter_cubit.dart';
// import 'package:bloc_test/bloc_test.dart';
// import 'package:test/test.dart';

// void main() {
//   group('CounterCubit', () {
//     CounterCubit counterCubit;

//     setUp(() {
//       counterCubit = CounterCubit();
//     });
//     tearDown(() {
//       counterCubit.close();
//     });
//     test('the initial for the CounterCubit()counterCubit value:0', () {
//       expect(
//           counterCubit.state,
//           CounterState(
//             counterValue: 0,
//             wasIncremented: true,
//           ));
//     });
//     blocTest(
//       'the cubit should (countervalue:1,wasIncrement :true when function called)',
//       build: () => counterCubit,
//       act: (cubit) => cubit.increment(),
//       expect: [CounterState(counterValue: 1, wasIncremented: true)],
//     );
//     blocTest(
//       'the cubit should (countervalue:-1,wasIncrement :true when function called)',
//       build: () => counterCubit,
//       act: (cubit) => cubit.decrement(),
//       expect: [CounterState(counterValue: -1, wasIncremented: false)],
//     );
//   });
// }
