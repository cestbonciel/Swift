import UIKit


DispatchQueue.global().sync {
    for i in 1...5 {
        
        print(i)
        
    }
}

DispatchQueue.global().async {
    for i in 1...5 {
        print("🐇🐇\(i)🐇🐇")
    }
}

for i in 100...105 {
    print("🐢🐢\(i)")
}
