import Foundation
import UIKit

public protocol CallBackOnTapOfButton: class {
    func didSegmentButtonTapped(ofIndex index: Int)
}

public class CustomSegmented: UIView {
    
    private var buttonTitles: [String] = []
    private var buttons: [UIButton] = []
    private var selectorColor: UIColor = .red
    private var textColor: UIColor = .black
    
    private var selectorView: UIView!
    
    weak public var onsegmentTapped: CallBackOnTapOfButton?
    
    public convenience init(frame: CGRect, buttonTitles: [String], selectorColor: UIColor = .red, textColor: UIColor = .black) {
        self.init(frame: frame)
        self.buttonTitles = buttonTitles
        self.selectorColor = selectorColor
        self.textColor = textColor
    }
}

// MARK: Buttons Action
extension CustomSegmented {
    
    // Action for every segment buttons
    @objc private func onTapSegmentAction(sender: UIButton) {
        
        guard let index = self.buttons.index(of: sender) else {
            return
        }
        self.updateTextColor()
        sender.setTitleColor(selectorColor, for: .normal)
        
        let buttonIndex = index.advanced(by: 0)
        let selectorXPosition = CGFloat(frame.width)/CGFloat(buttons.count) * CGFloat(buttonIndex)
        
        UIView.animate(withDuration: 0.3) {
            self.selectorView.frame.origin.x = selectorXPosition
        }
        onsegmentTapped?.didSegmentButtonTapped(ofIndex: buttonIndex)
    }
    
    // Update the text color for remaining views
    private func updateTextColor() {
        
        for button in self.buttons {
            button.setTitleColor(textColor, for: .normal)
        }
    }
}


// MARK: View Contruction
extension CustomSegmented {
    
    // To configure and setup all view related things
    public func configViews() {
        self.createSegmentButtons()
        self.createSelectorView()
        self.setUpStackView()
    }
    
    // Create the custom buttons inside the view
    private func createSegmentButtons() {
        
        self.buttons.removeAll()
        
        for buttonTitle in self.buttonTitles {
            
            let button: UIButton = UIButton(type: .system)
            button.setTitle(buttonTitle, for: .normal)
            button.setTitleColor(textColor, for: .normal)
            button.addTarget(self, action: #selector(onTapSegmentAction(sender:)), for: .touchUpInside)
            self.buttons.append(button)
        }
        self.buttons[0].setTitleColor(selectorColor, for: .normal)
    }
    
    // Create the SelectorView to identify which segment button is tapped
    private func createSelectorView() {
        
        let selectorViewsWidth = CGFloat(self.frame.width)/CGFloat(self.buttonTitles.count)
        selectorView = UIView(frame: CGRect(x: 0, y: frame.height, width: selectorViewsWidth, height: 3))
        selectorView.backgroundColor = selectorColor
        self.addSubview(selectorView)
    }
    
    // Setup stackview to arrange the buttons in segment
    private func setUpStackView() {
        
        let stackView = UIStackView(arrangedSubviews: buttons)
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
}
