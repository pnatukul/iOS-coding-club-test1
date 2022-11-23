import UIKit

//Task 1
import Foundation
struct CartProductResult {
 var id: Int
 var title: String
 var quantity: Int
}
let cartProducts = [
 CartProductResult(id: 1, title: "nike shoe 1", quantity: 5),
 CartProductResult(id: 2, title: "nike shoe 2", quantity: 2),
 CartProductResult(id: 3, title: "soap", quantity: 6)
]
print("\nTask1")
for i in 0...cartProducts.count-1 {
    print("\(cartProducts[i].id) - \(cartProducts[i].title)")
}

//Task 2
struct SearchProductResult {
 var id: Int
 var title: String
 var position: Int
}
let productList: [SearchProductResult] = [
 SearchProductResult(id: 1, title: "nike shoe 3", position: 1),
 SearchProductResult(id: 5, title: "pen", position: 2)
]

func printProducts()  {
    print("\nTask2")
    for i in 0...productList.count-1 {
        print("\(productList[i].id) - \(productList[i].title)")
    }
}

printProducts()


//Task 3
import Darwin

func printWithDelay(product1: CartProductResult, product2:
CartProductResult, completion: (@escaping ()-> Void)) {
// Write your code implementation here
    
    print("\nTask3")
//    sleep(1)
        print("\(product1.id) - \(product1.title)")
//    sleep(1)
        print("\(product2.id) - \(product2.title)")
    completion()
    
}

printWithDelay(product1: cartProducts[0], product2: cartProducts[1])
{
 print("Done printing products")
}

//Task 4

let json = """
{
 "id": "1",
 "options": [
 {
 "id": "11",
 "options": [
 {
 "id": "111",
 "options": []
 }
 ]
 },
 {
 "id": "2",
 "options": [
 {
 "id": "21",
 "options": []
 },
 {
 "id": "22",
 "options": [
 {
 "id": "221",
 "options": []
 }
 ]
 }
 ]
 }
 ] }
"""

struct Id: Codable {
    let id: String
    let options: [Id]
}
print("\nTask4")

let jsonData = Data(json.utf8)
let decoder = JSONDecoder()
do {
    let id = try decoder.decode(Id.self, from: jsonData)
    print(id)
} catch {
    print(error.localizedDescription)
}




