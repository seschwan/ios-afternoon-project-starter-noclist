//
//  AgentDetailVC.swift
//  NOCList
//
//  Created by Seschwan on 6/7/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class AgentDetailVC: UIViewController {
    
    
    // Outlets
    
    @IBOutlet weak var coverNameLbl: UILabel!
    @IBOutlet weak var realNamelbl: UILabel!
    @IBOutlet weak var accessLvlLbl: UILabel!
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        compromisedCheck()
        
        

        // Do any additional setup after loading the view.
    }
    

    func updateViews() {
        coverNameLbl.text = agent.coverName
        realNamelbl.text = agent.realName
        accessLvlLbl.text = String(agent.accessLevel)
    }
    
    func compromisedCheck() {
        if agent.compromised {
            view.backgroundColor = UIColor(hue: 0, saturation: 0.8, brightness: 0.9, alpha: 1.0)
        } else {
            view.backgroundColor = .white        }
    }
    
}
