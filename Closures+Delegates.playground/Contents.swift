//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        
        someFunctionThatTakesAClosure(value: 2) { result in
            print("We could do some stuff here... probably with the View")
            return result * 2
        }
        
        someFunctionThatTakesAClosure(value: 3) { $0 * 3 }
        

        self.view = view
    }
    
    func someFunctionThatTakesAClosure(value: Int, multiplyBy: (Int) -> Int) -> Int {
        print("Oh hi, LearnTo 👋 - thanks for the value \(value)")
        let result = multiplyBy(value)
        
        print("Here's the result of what you passed in as a block \(result)")
        return result
    }
    

}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
