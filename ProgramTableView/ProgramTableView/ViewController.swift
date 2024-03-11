//
//  ViewController.swift
//  ProgramTableView
//
//  Created by bmiit on 06/03/24.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    let product = ["pen","bag","cap","boll"]
    var tableView = UITableView()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell",for: indexPath)
        cell.textLabel?.text = product[indexPath.row]
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        NewTableview()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mycell")
        tableView = UITableView(frame: self.view.bounds,style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mycell")
        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.height, height: view.frame.width)
        view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
//    func NewTableview(){
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive=true
//        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive=true
//        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive=true
//        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive=true
//        tableView.rowHeight = 100
//    }


}

