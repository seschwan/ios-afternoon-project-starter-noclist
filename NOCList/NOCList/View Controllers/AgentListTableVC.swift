//
//  ViewController.swift
//  NOCList
//
//  Created by Seschwan on 6/7/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class AgentListTableVC: UIViewController {
    
    //let agentListController = AgentListController()
    private var agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Agents"
        tableView.dataSource = self
        tableView.delegate = self
        loadNOClist()
        
    }

    private func loadNOClist() {
        let ethan = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
        let jim = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
        let claire = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
        let eugene = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
        let franz = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
        let luther = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
        let sarah = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
        let max = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
        let hannah = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
        let jack = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
        let frank = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
        
        agents.append(contentsOf: [ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank])
    }

    func compromisedCount() -> Int {
        var compCount = 0
        for agent in agents {
            if agent.compromised {
                compCount += 1
            }
        }
        return compCount
    }
}

extension AgentListTableVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.agents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let agent = agents[indexPath.row]
        cell.textLabel?.text = agent.realName
        cell.detailTextLabel?.text = agent.coverName
        
        if agent.compromised {
            cell.backgroundColor = UIColor(hue: 0, saturation: 0.8, brightness: 0.9, alpha: 1.0)
        } else {
            cell.backgroundColor = .white
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(compromisedCount()) Agents have been compromised!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAgentDetailVCSegue" {
            guard let agentDetailVC = segue.destination as? AgentDetailVC,
            let selectedIndexPath = tableView.indexPathForSelectedRow else { return }
            agentDetailVC.agent = agents[selectedIndexPath.row]
            
            
        }
    }
    
    
}

extension AgentListTableVC: UITableViewDelegate {
    
}
