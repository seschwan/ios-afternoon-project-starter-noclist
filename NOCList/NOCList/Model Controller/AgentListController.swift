//
//  AgentListController.swift
//  NOCList
//
//  Created by Seschwan on 6/7/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import Foundation

class AgentListController {
    
    var nocList: [AgentList]
    
    init() {
        nocList = [
            AgentList(coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true),
            AgentList(coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false),
            AgentList(coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false),
            AgentList(coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true),
            AgentList(coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false),
            AgentList(coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false),
            AgentList(coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true),
            AgentList(coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false),
            AgentList(coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true),
            AgentList(coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true),
            AgentList(coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false),
            
        ]
    }
    
}

