//
//  ViewController.swift
//  task2WithJson
//
//  Created by Mehedi Mithu on 12/18/19.
//  Copyright © 2019 Mehedi Mithu. All rights reserved.
//


import UIKit
struct jsonstruct:Decodable {
    
    let name:String
    let capital:String
    let alpha2Code:String
    let alpha3Code:String
    let region:String
    let subregion:String
    
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableview: UITableView!
    
    
    var arrdata = [jsonstruct]()
    override func viewDidLoad() {
        super.viewDidLoad()
        getdata()
    }
    
    func getdata(){
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{if error == nil{
                self.arrdata = try JSONDecoder().decode([jsonstruct].self, from: data!)
                
                for _ in self.arrdata{
                    
                    DispatchQueue.main.async {
                        self.tableview.reloadData()
                    }
                    
                }
                }
                
            }catch{
                print("Error in get json data")
            }
            
            }.resume()
    }
    
    
    //TableView
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrdata.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lblname.text = "Name : \(arrdata[indexPath.row].name)"
        cell.lblcapital.text = "Capital : \(arrdata[indexPath.row].capital)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailViewController
        detail.strregion = "Region :\(arrdata[indexPath.row].region)"
        detail.strsubregion = "SubRegion :\(arrdata[indexPath.row].subregion)"
        detail.stralpha3 = "Alpha3code :\(arrdata[indexPath.row].alpha3Code)"
        detail.stralpha2 = "Alpha2code :\(arrdata[indexPath.row].alpha2Code)"
        self.navigationController?.pushViewController(detail, animated: true)
        
        
    }
    
}


