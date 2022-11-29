//
//  ViewController.swift
//  
//
//  Created by Krys Welch on 4/15/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var arrayTable: UITableView!
    @IBOutlet weak var addToArray: UIButton!
    var array = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayTable.delegate = self
        arrayTable.dataSource = self
        print(array)
        // Do any additional setup after loading the view.
    }

    @IBAction func addToArrayFunc(_ sender: Any) {
        
        var ran = Int.random(in: 1...1000)
       // var temp = 0
        var tempIndex = 0
        // If 26, enter before 100
        for num in array.indices{
            if (ran < array[num]){
                array.insert(ran, at: num)
                break
                
            }
            
        }
        print(tempIndex)

        
        
        self.arrayTable.reloadData()
        print(array)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var converted = [String]()
        let cell = tableView.dequeueReusableCell(withIdentifier: "arrayTable",
                                                    for: indexPath)
        
        for num in array.indices{
            converted.append(String(array[num]))
        }
        
        cell.textLabel?.text = converted[indexPath.row]
           return cell
    }
    
}

