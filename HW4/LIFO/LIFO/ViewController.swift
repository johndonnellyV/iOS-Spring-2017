//
//  ViewController.swift
//  LIFO
//
//  Created by Bob on 2/22/17.
//  Copyright © 2017 CWRU iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var TextField2: UITextField!
    var queue = FIFOQ<Int>()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Label.text = "Test"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func EnterButton(_ sender: Any) {
        if TextField.text?.isEmpty == false {
            let x: Int? = Int(TextField.text!)
            Label.text = binaryConv(input: x!)
            
        }
    }
    
    @IBAction func queueButton(_ sender: Any) {
        if TextField2.text?.isEmpty == false {
            let x: Int? = Int(TextField2.text!)
            queue.enqueue(item: x!)
            print("WTF")
            TextField2.text = ""
            
        }
    }

    @IBAction func showButton(_ sender: Any) {
        Label2.text = String(describing: queue.items)
        
    }
    

    @IBAction func dequeueButton(_ sender: Any) {
            queue.dequeue()
        
    }
    
    func binaryConv(input: Int) -> String{
        let queue = LIFOQ<Int>()
        var numb = input
        while numb > 0{
            
            if numb % 2 == 1{
                queue.push(1)
            }
            else{
                queue.push(0)
            }
            numb = numb / 2
            
        }
        var result: String = ""
        while queue.isEmpty() == false {
            result = result + String(queue.pop())
            
        }
        
        return result
    }
    
}


class LIFOQ<T> {
    
    var items = [T]()
    
    init(){
        
    }
    func push(_ item: T){
        items.append(item)
    }
    
    func pop() -> T{
        return items.removeLast()
    }
    
    func peek() -> T{
        return items.last!
    }
    
    func count() -> Int{
        return items.count
    }
    
    func isEmpty() -> Bool{
        return items.isEmpty
    }
    
}
class FIFOQ<T> {
    var items = [T]()
    
    init(){
        
    }
    
    func enqueue(item: T) {
        items.append(item)
        print(items[0])
        print("ASDFASDFA")
    }
    func dequeue() {
        items.removeFirst()
    }
    func peek() -> T {
        return items[0]
    }
    func clear() {
        items.removeAll()
    }
    func count() -> Int{
        return items.count
    }
    func isEmpty() -> Bool{
        return items.isEmpty
    }
    
    
}
