import UIKit

//func printNumbers() {
//    print(1)
//    asyncFunction {
//        print("async function finish")
//    }
//    print(3)
//}
//
//func asyncFunction(completionHandler: @escaping () -> Void) {
//    DispatchQueue.main.async {
//        print(2)
//        completionHandler()
//    }
//}
//
//
//printNumbers()


//func printNumber2() {
//    print(1)
//    Task {
//        print(3)
////        await asyncFunction2()
//        await asyncFunction2()
//        print("=== 비동기 함수 끝난 후 ===")
//        print(4)
//    }
//    print(2)
//}
//
//
//func asyncFunction2() async {
//    print("=== 비동기 실행 ===")
//}
//
//
//printNumber2()


//print("====")
//func executeFunc() {
//    print(1)
//    print(2)
//
//    Task {
//        await asyncFunction4() // ### 📌 비동기 실행 ###
//    }
//
//    DispatchQueue.main.async {
//        print("3")
//        Task {
//            await asyncFunction3() // ### 📌 비동기 실행 ###
//            await asyncFunction4() // ==== ✅ 비동기 실행 ====
//        }
//    }
//
//    print("🐇🐇🐇🐇🐇")
//
//    Task {
//        await asyncFunction3() // ### 📌 비동기 실행 ###
//        await asyncFunction4() // ==== ✅ 비동기 실행 ====
//    }
//}
//
//func asyncFunction3() async {
//    print("==== 📌 비동기 실행 ====")
//}
//
//func asyncFunction4() async {
//    print("### ✅ 비동기 실행 ###")
//}
//
//
//executeFunc()


//actor SharedWallet {
//    let name = "공금 지갑"
//    var amount: Int = 0
//
//    init(amount: Int) {
//        self.amount = amount
//    }
//
//    func spendMoney(amount: Int) {
//        self.amount -= amount
//    }
//}
//
//Task {
//    let wallet = SharedWallet(amount: 10000)
//    let name =  wallet.name
//    let amount = await wallet.amount
//    await wallet.spendMoney(amount: 100)
////    await wallet.amount += 100
//}

//actor Counter {
//    var value = 0
//    func increment() -> Int {
//        value = value + 1
//        return value
//    }
//}
//
//let counter = Counter()
//Task.detached {
//    print(await counter.increment())
//}
//
//Task.detached {
//    print(await counter.increment())
//}


func executeFunc() {
    print("1")
    DispatchQueue.main.async {
        print("2")
        print("===비동기 실행===")
    }
    print("3")
}


executeFunc()
