//
//  DetailViewController.swift
//  TableViewTest
//
//  Created by Cntt20 on 4/26/17.
//  Copyright © 2017 Cntt20. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    //
    @IBOutlet weak var nameEvent: UILabel!
    
    @IBOutlet weak var detailEvent: UILabel!
    
    @IBOutlet weak var dayEvent: UILabel!
    //
    var nameEventC = String()
    var detailEventC = String()
    var dayEventC = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        nameEvent.text = nameEventC
        dayEvent.text = dayEventC
        detailEvent.text = detailEventC
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
