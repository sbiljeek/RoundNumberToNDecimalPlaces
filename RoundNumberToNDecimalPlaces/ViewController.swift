//
//  ViewController.swift
//  RoundNumberToNDecimalPlaces
//
//  Created by Salman Biljeek on 11/8/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGreen.withAlphaComponent(0.9)
        
        let title1 = UILabel()
        let title2 = UILabel()
        let title3 = UILabel()
        let title4 = UILabel()
        
        title1.font = .boldSystemFont(ofSize: 15)
        title2.font = .boldSystemFont(ofSize: 15)
        title3.font = .boldSystemFont(ofSize: 15)
        title4.font = .boldSystemFont(ofSize: 15)
        
        title1.textColor = .black.withAlphaComponent(0.5)
        title2.textColor = .black.withAlphaComponent(0.5)
        title3.textColor = .black.withAlphaComponent(0.5)
        title4.textColor = .black.withAlphaComponent(0.5)
        
        title1.text = "1 decimal places"
        title2.text = "2 decimal places"
        title3.text = "3 decimal places"
        title4.text = "4 decimal places"
        
        let label = UILabel()
        let label1 = UILabel()
        let label2 = UILabel()
        let label3 = UILabel()
        let label4 = UILabel()
        
        label.font = .boldSystemFont(ofSize: 25)
        label.textAlignment = .center
        
        label1.font = .boldSystemFont(ofSize: 15)
        label2.font = .boldSystemFont(ofSize: 15)
        label3.font = .boldSystemFont(ofSize: 15)
        label4.font = .boldSystemFont(ofSize: 15)
        
        label.textColor = .black
        
        label1.textColor = .black
        label2.textColor = .black
        label3.textColor = .black
        label4.textColor = .black
        
        let number: Double = 4.23946
        let rounded1DecimalPlaces = self.roundedTo(value: number, decimalPlaces: 1)
        let rounded2DecimalPlaces = self.roundedTo(value: number, decimalPlaces: 2)
        let rounded3DecimalPlaces = self.roundedTo(value: number, decimalPlaces: 3)
        let rounded4DecimalPlaces = self.roundedTo(value: number, decimalPlaces: 4)
        
        label.text = String(describing: number)
        label1.text = String(describing: rounded1DecimalPlaces)
        label2.text = String(describing: rounded2DecimalPlaces)
        label3.text = String(describing: rounded3DecimalPlaces)
        label4.text = String(describing: rounded4DecimalPlaces)
        
        let lineView1: UIView = {
            let view = UIView()
            view.backgroundColor = .black.withAlphaComponent(0.3)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.heightAnchor.constraint(equalToConstant: 1).isActive = true
            return view
        }()
        let lineView2: UIView = {
            let view = UIView()
            view.backgroundColor = .black.withAlphaComponent(0.3)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.heightAnchor.constraint(equalToConstant: 1).isActive = true
            return view
        }()
        let lineView3: UIView = {
            let view = UIView()
            view.backgroundColor = .black.withAlphaComponent(0.3)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.heightAnchor.constraint(equalToConstant: 1).isActive = true
            return view
        }()
        let lineView4: UIView = {
            let view = UIView()
            view.backgroundColor = .black.withAlphaComponent(0.3)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.heightAnchor.constraint(equalToConstant: 1).isActive = true
            return view
        }()
        
        let stack1 = UIStackView(arrangedSubviews: [
            title1,
            lineView1,
            label1
        ])
        stack1.axis = .horizontal
        stack1.spacing = 15
        stack1.alignment = .center
        
        let stack2 = UIStackView(arrangedSubviews: [
            title2,
            lineView2,
            label2
        ])
        stack2.axis = .horizontal
        stack2.spacing = 15
        stack2.alignment = .center
        
        let stack3 = UIStackView(arrangedSubviews: [
            title3,
            lineView3,
            label3
        ])
        stack3.axis = .horizontal
        stack3.spacing = 15
        stack3.alignment = .center
        
        let stack4 = UIStackView(arrangedSubviews: [
            title4,
            lineView4,
            label4
        ])
        stack4.axis = .horizontal
        stack4.spacing = 15
        stack4.alignment = .center
        
        let mainStack = UIStackView(arrangedSubviews: [
            label,
            stack1,
            stack2,
            stack3,
            stack4
        ])
        mainStack.axis = .vertical
        mainStack.spacing = 10
        
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainStack)
        mainStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -60).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50).isActive = true
    }
    
    func roundedTo(value: Double, decimalPlaces: Int) -> Double {
        var multiplyValueString = String(repeating: "0", count: decimalPlaces)
        multiplyValueString = "1" + multiplyValueString
        let multiplyValue = Double(multiplyValueString) ?? 0
        let roundedValue = (value * multiplyValue).rounded() / multiplyValue
        return roundedValue
    }
}

