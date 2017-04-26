//
//  ViewController.swift
//  TableViewTest
//
//  Created by Cntt20 on 4/26/17.
//  Copyright © 2017 Cntt20. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //
    @IBOutlet weak var myTableView: UITableView!
    //
    let weekDays = ["Monday", "Tuesday", "Wednesday", "Thusday", "Friday", "Saturday", "Sunday"]
    var mondays = ["Event1", "Event2", "Event3"]
    var tuesdays = ["Event1", "Event2", "Event3"]
    var wednesdays = ["Event1", "Event2", "Event3"]
    var thusdays = ["Event1", "Event2", "Event3"]
    var fridays = ["Event1", "Event2", "Event3"]
    var saturdays = ["Event1", "Event2", "Event3"]
    var sundays = ["Event1", "Event2", "Event3"]
    //
    var demondays = ["Detail Event1", "Detail Event2", "Detail Event3"]
    var detuesdays = ["Detail Event1", "Detail Event2", "Detail Event3"]
    var dewednesdays = ["Detail Event1", "Detail Event2", "Detail Event3"]
    var dethusdays = ["Detail Event1", "Detail Event2", "Detail Event3"]
    var defridays = ["Detail Event1", "Detail Event2", "Detail Event3"]
    var desaturdays = ["Detail Event1", "Detail Event2", "Detail Event3"]
    var desundays = ["Detail Event1", "Detail Event2", "Detail Event3"]
    //
    var temp = ""
    var temp1 = ""
    var temp2 = ""
    


    override func viewDidLoad() {
        super.viewDidLoad()
        //
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //
    //
    func numberOfSections(in tableView: UITableView) -> Int {
        return weekDays.count
    }
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return mondays.count
        }
        if section == 1
        {
            return tuesdays.count
        }
        if section == 2
        {
            return wednesdays.count
        }
        if section == 3
        {
            return thusdays.count
        }
        if section == 4
        {
            return fridays.count
        }
        if section == 5
        {
            return saturdays.count
        }
        if section == 6
        {
            return sundays.count
        }
        
        return -1
    }
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! EventTableViewCell
        //
        if (indexPath.section==0)
        {
            cell.firstLabel.text = mondays[indexPath.row]
            cell.secondLabel.text = demondays[indexPath.row]
        }
        if (indexPath.section==1)
        {
            cell.firstLabel.text = tuesdays[indexPath.row]
            cell.secondLabel.text = detuesdays[indexPath.row]
        }
        if (indexPath.section==2)
        {
            cell.firstLabel.text = wednesdays[indexPath.row]
            cell.secondLabel.text = dewednesdays[indexPath.row]
        }
        if (indexPath.section==3)
        {
            cell.firstLabel.text = thusdays[indexPath.row]
            cell.secondLabel.text = dethusdays[indexPath.row]
        }
        if (indexPath.section==4)
        {
            cell.firstLabel.text = fridays[indexPath.row]
            cell.secondLabel.text = defridays[indexPath.row]
        }
        if (indexPath.section==5)
        {
            cell.firstLabel.text = saturdays[indexPath.row]
            cell.secondLabel.text = desaturdays[indexPath.row]
        }
        if (indexPath.section==6)
        {
            cell.firstLabel.text = sundays[indexPath.row]
            cell.secondLabel.text = desundays[indexPath.row]
        }
        return cell
    }
    //
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return weekDays[section]
    }
    //
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    //
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            if (indexPath.section==0)
            {
                mondays.remove(at: indexPath.row)
            }
            if (indexPath.section==1)
            {
                tuesdays.remove(at: indexPath.row)
            }
            if (indexPath.section==2)
            {
                wednesdays.remove(at: indexPath.row)
            }
            if (indexPath.section==3)
            {
                thusdays.remove(at: indexPath.row)
            }
            if (indexPath.section==4)
            {
                fridays.remove(at: indexPath.row)
            }
            if (indexPath.section==5)
            {
                saturdays.remove(at: indexPath.row)
            }
            if (indexPath.section==6)
            {
                sundays.remove(at: indexPath.row)
            }
            
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        temp1 = weekDays[indexPath.section]
        if let cell = tableView.cellForRow(at: indexPath) as? EventTableViewCell{
            
            temp = cell.firstLabel.text!
            temp2 = cell.secondLabel.text!
            NSLog(temp)
            //print(temp)
            //            let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            //            destinationVC.even1 = temp
            //            destinationVC.even2 = "AVG"
            //            self.navigationController?.pushViewController(destinationVC, animated: true)
            performSegue(withIdentifier: "showDetail", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let destinationVC = segue.destination as! DetailViewController
        
        destinationVC.nameEventC = temp
        destinationVC.dayEventC = temp1
        destinationVC.detailEventC = temp2
        
    }
    



}

