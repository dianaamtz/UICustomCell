//
//  PowerCustomCell.swift
//  UICustomCell
//
//  Created by Diana Laura Martinez on 16/05/23.
//

import Foundation
import UIKit

class PowerCustomCell: UITableViewCell {
    static let identifier = "PowerCustomCell "
    
    //MARK: UIElements
    
    lazy var stackVertical: UIStackView = {
      let  stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 55
        stack.distribution = .fillEqually
        return stack
    }()
    
    lazy var viewContainer1: UIView = {
      let view = UIView()
        return view
    }()
    
    lazy var lbl1: UILabel = {
        let lbl = UILabel()
        lbl.text = "Power"
        lbl.font = UIFont(name: "Helvetica-bold", size: 16)
        lbl.textColor = .white
        return lbl
    }()
    
    lazy var progressView1: UIProgressView = {
       let progress = UIProgressView()
        progress.progress = 1
   progress.progressTintColor = .magenta
        progress.setProgress(0.1, animated: true)
        return progress
    }()
    
    lazy var viewContainer2: UIView = {
      let view = UIView()
        return view
    }()
    
    lazy var lbl2: UILabel = {
        let lbl = UILabel()
        lbl.text = "Speed"
        lbl.font = UIFont(name: "Helvetica-bold", size: 16)
        lbl.textColor = .white
        return lbl
    }()
    
    lazy var progressView2: UIProgressView = {
       let progress = UIProgressView()
        progress.progress = 1
   progress.progressTintColor = .magenta
        progress.setProgress(0.1, animated: true)
        return progress
    }()
    
    lazy var viewContainer3: UIView = {
      let view = UIView()
        return view
    }()
    
    lazy var lbl3: UILabel = {
        let lbl = UILabel()
        lbl.text = "Defense"
        lbl.font = UIFont(name: "Helvetica-bold", size: 16)
        lbl.textColor = .white
        return lbl
    }()
    
    lazy var progressView3: UIProgressView = {
       let progress = UIProgressView()
        progress.progress = 1
   progress.progressTintColor = .magenta
        progress.setProgress(0.1, animated: true)
       
        return progress
    }()

    lazy var viewContainer4: UIView = {
      let view = UIView()
        return view
    }()
    
    lazy var lbl4: UILabel = {
        let lbl = UILabel()
        lbl.text = "Attack"
        lbl.font = UIFont(name: "Helvetica-bold", size: 16)
        lbl.textColor = .white
        return lbl
    }()
    lazy var progressView4: UIProgressView = {
        let progress = UIProgressView()
        progress.progress = 1
        progress.progressTintColor = .magenta
        progress.setProgress(0.1, animated: true)
        return progress
    }()
    
    lazy var viewContainer5: UIView = {
      let view = UIView()
        return view
    }()
    
    lazy var lbl5: UILabel = {
        let lbl = UILabel()
        lbl.text = "HP"
        lbl.font = UIFont(name: "Helvetica-bold", size: 16)
        lbl.textColor = .white
        return lbl
    }()
    
    lazy var progressView5: UIProgressView = {
        let progress = UIProgressView()
        progress.progress = 1
   progress.progressTintColor = .magenta
        progress.setProgress(0.1, animated: true)
        return progress
    }()
    
    lazy var viewContainer6: UIView = {
      let view = UIView()
        return view
    }()
    
    lazy var lbl6: UILabel = {
        let lbl = UILabel()
        lbl.text = "Skill"
        lbl.font = UIFont(name: "Helvetica-bold", size: 16)
        lbl.textColor = .white
        return lbl
    }()
    
    lazy var progressView6: UIProgressView = {
        let progress = UIProgressView()
        progress.progress = 1
   progress.progressTintColor = .magenta
        progress.setProgress(0.1, animated: true)
        return progress
    }()
    
    
    //MARK: Functions
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    contentView.addSubview(stackVertical)
        stackVertical.translatesAutoresizingMaskIntoConstraints = false
        stackVertical.widthAnchor.constraint(equalToConstant: 160).isActive = true
        stackVertical.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -20).isActive = true
        stackVertical.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20).isActive = true
        stackVertical.topAnchor.constraint(equalTo: contentView.topAnchor,constant: -60).isActive = true
      
    stackVertical.addArrangedSubview(viewContainer1)
        viewContainer1.translatesAutoresizingMaskIntoConstraints = false
        viewContainer1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        viewContainer1.addSubview(lbl1)
        lbl1.translatesAutoresizingMaskIntoConstraints = false
        lbl1.topAnchor.constraint(equalTo: viewContainer1.topAnchor).isActive = true
        
        viewContainer1.addSubview(progressView1)
        progressView1.translatesAutoresizingMaskIntoConstraints = false
        progressView1.heightAnchor.constraint(equalToConstant: 10).isActive = true
        progressView1.topAnchor.constraint(equalTo: lbl1.bottomAnchor,constant: 10).isActive = true
        progressView1.leadingAnchor.constraint(equalTo: viewContainer1.leadingAnchor).isActive = true
        progressView1.trailingAnchor.constraint(equalTo:viewContainer1.trailingAnchor).isActive = true
     
    stackVertical.addArrangedSubview(viewContainer2)
        viewContainer2.translatesAutoresizingMaskIntoConstraints = false
        viewContainer2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        viewContainer2.topAnchor.constraint(equalTo: viewContainer1.bottomAnchor,constant: 15).isActive = true
        
        viewContainer2.addSubview(lbl2)
         lbl2.translatesAutoresizingMaskIntoConstraints = false
         lbl2.topAnchor.constraint(equalTo: viewContainer2.topAnchor).isActive = true
        
        viewContainer2.addSubview(progressView2)
         progressView2.translatesAutoresizingMaskIntoConstraints = false
         progressView2.heightAnchor.constraint(equalToConstant: 10).isActive = true
         progressView2.topAnchor.constraint(equalTo: lbl2.bottomAnchor,constant: 10).isActive = true
         progressView2.leadingAnchor.constraint(equalTo: viewContainer2.leadingAnchor).isActive = true
         progressView2.trailingAnchor.constraint(equalTo:viewContainer2.trailingAnchor).isActive = true

    stackVertical.addArrangedSubview(viewContainer3)
        viewContainer3.translatesAutoresizingMaskIntoConstraints = false
        viewContainer3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        viewContainer3.topAnchor.constraint(equalTo: viewContainer2.bottomAnchor,constant: 15).isActive = true
        
        viewContainer3.addSubview(lbl3)
         lbl3.translatesAutoresizingMaskIntoConstraints = false
         lbl3.topAnchor.constraint(equalTo: viewContainer3.topAnchor).isActive = true
        
        viewContainer3.addSubview(progressView3)
         progressView3.translatesAutoresizingMaskIntoConstraints = false
         progressView3.heightAnchor.constraint(equalToConstant: 10).isActive = true
         progressView3.topAnchor.constraint(equalTo: lbl3.bottomAnchor,constant: 10).isActive = true
         progressView3.leadingAnchor.constraint(equalTo: viewContainer2.leadingAnchor).isActive = true
         progressView3.trailingAnchor.constraint(equalTo:viewContainer2.trailingAnchor).isActive = true
        
    stackVertical.addArrangedSubview(viewContainer4)
         viewContainer4.translatesAutoresizingMaskIntoConstraints = false
         viewContainer4.heightAnchor.constraint(equalToConstant: 40).isActive = true
         viewContainer4.topAnchor.constraint(equalTo: viewContainer3.bottomAnchor,constant: 15).isActive = true
         viewContainer4.addSubview(lbl4)
          lbl4.translatesAutoresizingMaskIntoConstraints = false
          lbl4.topAnchor.constraint(equalTo: viewContainer4.topAnchor).isActive = true
         
         viewContainer4.addSubview(progressView4)
          progressView4.translatesAutoresizingMaskIntoConstraints = false
          progressView4.heightAnchor.constraint(equalToConstant: 10).isActive = true
          progressView4.topAnchor.constraint(equalTo: lbl4.bottomAnchor,constant: 10).isActive = true
          progressView4.leadingAnchor.constraint(equalTo: viewContainer3.leadingAnchor).isActive = true
          progressView4.trailingAnchor.constraint(equalTo:viewContainer3.trailingAnchor).isActive = true
        
    stackVertical.addArrangedSubview(viewContainer5)
             viewContainer5.translatesAutoresizingMaskIntoConstraints = false
             viewContainer5.heightAnchor.constraint(equalToConstant: 40).isActive = true
        viewContainer5.topAnchor.constraint(equalTo: viewContainer4.bottomAnchor,constant: 15).isActive = true
             
             viewContainer5.addSubview(lbl5)
              lbl5.translatesAutoresizingMaskIntoConstraints = false
              lbl5.topAnchor.constraint(equalTo: viewContainer5.topAnchor).isActive = true
             
             viewContainer5.addSubview(progressView5)
              progressView5.translatesAutoresizingMaskIntoConstraints = false
              progressView5.heightAnchor.constraint(equalToConstant: 10).isActive = true
              progressView5.topAnchor.constraint(equalTo: lbl5.bottomAnchor,constant: 10).isActive = true
              progressView5.leadingAnchor.constraint(equalTo: viewContainer4.leadingAnchor).isActive = true
              progressView5.trailingAnchor.constraint(equalTo:viewContainer4.trailingAnchor).isActive = true
        
    stackVertical.addArrangedSubview(viewContainer6)
                 viewContainer6.translatesAutoresizingMaskIntoConstraints = false
                 viewContainer6.heightAnchor.constraint(equalToConstant: 40).isActive = true
                 viewContainer6.topAnchor.constraint(equalTo: viewContainer5.bottomAnchor,constant: 15).isActive = true
                 
                 viewContainer5.addSubview(lbl6)
                  lbl6.translatesAutoresizingMaskIntoConstraints = false
                  lbl6.topAnchor.constraint(equalTo: viewContainer6.topAnchor).isActive = true
                 
                 viewContainer6.addSubview(progressView6)
                  progressView6.translatesAutoresizingMaskIntoConstraints = false
                  progressView6.heightAnchor.constraint(equalToConstant: 10).isActive = true
                  progressView6.topAnchor.constraint(equalTo: lbl6.bottomAnchor,constant: 10).isActive = true
                  progressView6.leadingAnchor.constraint(equalTo: viewContainer5.leadingAnchor).isActive = true
                  progressView6.trailingAnchor.constraint(equalTo:viewContainer5.trailingAnchor).isActive = true

     randomNumber(progressView: progressView1)
        randomNumber(progressView: progressView2)
        randomNumber(progressView: progressView3)
        randomNumber(progressView: progressView4)
        randomNumber(progressView: progressView5)
        randomNumber(progressView: progressView6)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func randomNumber(progressView: UIProgressView) {
        let progress = Float.random(in: 0.0...1.0)
        progressView.setProgress(progress, animated: true)
      print(progress)
    }
    
}
