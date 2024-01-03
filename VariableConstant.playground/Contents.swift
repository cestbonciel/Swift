import UIKit

/*:
# Part1 - 변수와 상수
*/

/*:
 ---
 - 변수의 이름 / 이름 짓기 규칙
 ---
 */
//:> 프로그램 동작의 첫번째 단계 -> 메모리에 값(데이터)을 저장(변수)

var nameOfYou = "Tim Cook"
var realName = "스티브 잡스"

// 숫자를 첫글자로 시작하는 것은 금지

var 🐉 = "Dragon"
var 변수 = "한글 변수명"

// 이모지, 한자, 한글 등 사용가능하나 관습적으로 사용 안함

/*:
 ---
 - 변수의 실제 사용법
 ---
 */

var name = "홍길동"
var age = 100
var address = "서울 종로구"

print(name, age, address)

name = "김서현"

print(name, age)

print("저의 이름은 \(name)입니다. 나이는 \(age)살 입니다. 그리고 \(address)에 살고 있습니다.")

//:> String Interpolation(문자열 보간법)

/*:
## 2) 상수(Constants)
 - 상수의 의미(변하지 않는 데이터)
---
*/
let anotherName = "스티브잡스"

//anotherName = "스티브잡스"
// Cannot assign to value: 'anotherName' is a 'let' constant. Change 'let' to 'var' to make it mutable
