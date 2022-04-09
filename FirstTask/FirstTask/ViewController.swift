//
//  ViewController.swift
//  FirstTask
//
//  Created by Amina Moldamyrza on 09.04.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let yellowBox: UIView = {
        let box = UIView()
        box.backgroundColor = .yellow
        return box
    }()
    let blackBox: UIView = {
        let box = UIView()
        box.backgroundColor = .black
        return box
    }()
    let grayBox: UIView = {
        let box = UIView()
        box.backgroundColor = .gray
        return box
    }()
    let purpleBox: UIView = {
        let box = UIView()
        box.backgroundColor = .purple
        return box
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureBox(box: yellowBox, offset: 10)
        configureBox(box: blackBox, offset: 35)
        
        view.addSubview(grayBox)
        grayBox.snp.makeConstraints{(make) in
            make.size.equalTo(100)
            make.leading.equalTo(yellowBox.snp.leading)
            make.top.equalTo(yellowBox.snp.bottom)
        }
        
        grayBox.addSubview(purpleBox)
        purpleBox.snp.makeConstraints { (make) in
            make.edges.equalTo(grayBox).inset(25)
        }
        
        
    }
    
    private func configureBox(box: UIView, offset: Int){
        view.addSubview(box)
        box.snp.makeConstraints { (make) in
            make.size.equalTo(100)
            make.center.equalTo(view).offset(offset)
        }
    }
    
    


}

