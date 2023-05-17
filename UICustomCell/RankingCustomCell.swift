//
//  RankingCustomCell.swift
//  UICustomCell
//
//  Created by Rosendo Vazquez on 12/05/23.
//

import UIKit

class RankingCustomCell: UITableViewCell {
  static let identifier = "RankingCustomCell"
    
    lazy var lblTitle: UILabel = {
        let lbl = UILabel ()
        lbl.text = "Hyper Power"
        lbl.backgroundColor = UIColor(red: 0.63, green: 0.50, blue: 0.98, alpha: 1.00)
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.font = UIFont(name: "Helvetica-bold", size: 24)
        lbl.layer.cornerRadius = 10
        lbl.clipsToBounds = true
        return lbl
    }()
    
    lazy var stackHorizonytal: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
  
  lazy var imgAvatar : UIImageView = {
    let img = UIImageView()
    img.image = UIImage(named: "star")
    img.clipsToBounds = true
    img.contentMode = .scaleAspectFit
    return img
  }()
    
    lazy var imgAvatar2 : UIImageView = {
      let img = UIImageView()
      img.image = UIImage(named: "star")
      img.clipsToBounds = true
      img.contentMode = .scaleAspectFit
      return img
    }()
    
    lazy var imgAvatar3 : UIImageView = {
      let img = UIImageView()
      img.image = UIImage(named: "star")
      img.clipsToBounds = true
      img.contentMode = .scaleAspectFit
      return img
    }()
   
    lazy var imgAvatar4 : UIImageView = {
      let img = UIImageView()
      img.image = UIImage(named: "star")
      img.clipsToBounds = true
      img.contentMode = .scaleAspectFit
      return img
    }()
    
    lazy var imgAvatar5 : UIImageView = {
      let img = UIImageView()
      img.image = UIImage(named: "star")
      img.clipsToBounds = true
      img.contentMode = .scaleAspectFit
      return img
    }()
    
    
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
      contentView.addSubview(lblTitle)
      lblTitle.translatesAutoresizingMaskIntoConstraints = false
      lblTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20).isActive =
     true
      lblTitle.widthAnchor.constraint(equalToConstant: 160).isActive = true
      lblTitle.heightAnchor.constraint(equalToConstant: 40).isActive = true
      
      contentView.addSubview(stackHorizonytal)
      stackHorizonytal.translatesAutoresizingMaskIntoConstraints = false
      stackHorizonytal.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20).isActive = true
      stackHorizonytal.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -20).isActive = true
      stackHorizonytal.widthAnchor.constraint(equalToConstant: 130).isActive = true
      stackHorizonytal.heightAnchor.constraint(equalToConstant: 60).isActive = true
      stackHorizonytal.topAnchor.constraint(equalTo: lblTitle.bottomAnchor,constant: 10).isActive = true
    // stackHorizonytal.backgroundColor = .red
      
      stackHorizonytal.addArrangedSubview(imgAvatar)
    imgAvatar.translatesAutoresizingMaskIntoConstraints = false
      imgAvatar.heightAnchor.constraint(equalToConstant: 15).isActive = true
      imgAvatar.widthAnchor.constraint(equalToConstant: 15).isActive = true
   
      stackHorizonytal.addArrangedSubview(imgAvatar2)
      imgAvatar.translatesAutoresizingMaskIntoConstraints = false
      
      stackHorizonytal.addArrangedSubview(imgAvatar3)
      imgAvatar.translatesAutoresizingMaskIntoConstraints = false
      
      stackHorizonytal.addArrangedSubview(imgAvatar4)
      imgAvatar.translatesAutoresizingMaskIntoConstraints = false
      
      stackHorizonytal.addArrangedSubview(imgAvatar5)
      imgAvatar.translatesAutoresizingMaskIntoConstraints = false
      
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
