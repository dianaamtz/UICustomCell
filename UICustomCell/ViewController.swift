//
//  ViewController.swift
//  UICustomCell
//
//  Created by Rosendo Vazquez on 12/05/23.
//

import UIKit

enum CellType {
  case Avatar
  case Ranking
  case Power
}

class ViewController: UIViewController {

  //MARK: Properties
  let collection: [CellType] = [.Avatar, .Ranking, .Power]
  
  //MARK: UIElements
  lazy var tableView: UITableView = {
    let tableView = UITableView()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    tableView.register(AvatarCustomCell.self, forCellReuseIdentifier: AvatarCustomCell.identifier)
    tableView.register(RankingCustomCell.self, forCellReuseIdentifier: RankingCustomCell.identifier)
    
    tableView.delegate = self
    tableView.dataSource = self
    tableView.separatorStyle = .none
    tableView.backgroundColor = .clear
    return tableView
  }()
  
  //MARK: Functions
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  func setup() {
    view.addSubview(tableView)
    tableView.frame = view.bounds
  }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
      let colorGradient = CAGradientLayer()
        colorGradient.colors = [UIColor(red: 0.96, green: 0.95, blue: 0.90, alpha: 1.00).cgColor, UIColor(red: 0.99, green: 0.80, blue: 0.00, alpha: 1.00).cgColor]
        colorGradient.locations = [0.35, 1.00]
        colorGradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        colorGradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        colorGradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        self.view.layer.insertSublayer(colorGradient, at: 0)
        
        
        }
  
  //MARK: Actions
  
  

}
//MARK: Extension

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return collection.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: UITableViewCell
    
    switch collection[indexPath.row] {
      case .Avatar:
        cell = tableView.dequeueReusableCell(withIdentifier: AvatarCustomCell.identifier, for: indexPath) as! AvatarCustomCell
      case .Ranking:
        cell = tableView.dequeueReusableCell(withIdentifier: RankingCustomCell.identifier, for: indexPath) as! RankingCustomCell
      case .Power:
        cell = UITableViewCell()
    }
    cell.backgroundColor = .clear
    cell.selectionStyle = .none
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    switch collection[indexPath.row] {
      case .Avatar:
        return 300
      case .Ranking:
        return 200
      case .Power:
        return 600
    }
  }
}


// TODO: - Background degradado
// TODO: - Sliders
// TODO: - valor aleatorio a sliders ne un rango especifico
