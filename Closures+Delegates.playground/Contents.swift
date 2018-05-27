//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 180, y: 200, width: 240, height: 20)
        label.textColor = .black
        
        view.addSubview(label)
        
        someFunctionThatTakesAClosure(value: 2) { input in
            print("We could do some stuff here... probably with the View")
            let output = input * 2
            label.text = String(output)
            return output
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
