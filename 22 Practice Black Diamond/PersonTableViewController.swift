//
//  PersonTableViewController.swift
//  22 Practice Black Diamond
//
//  Created by Cody on 8/22/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

var membersOnly: Bool = false

class PersonTableViewController: UITableViewController {
    @IBAction func memberOnlyView(_ sender: Any) {
        if membersOnly == true{
            membersOnly = false
        }
        else{
            membersOnly = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if membersOnly == false{
            return PersonController.people.count
        }else {
            return PersonController.members.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        //let cody = Person(firstName: "Cody", lastName: "Adcock", age: 24)
        
        if membersOnly == false{
            let person = PersonController.people[indexPath.row]
            cell.textLabel?.text = "\(person.firstName) \(person.lastName) Age: \(person.age)"
            if person.areYouAMemberOfTheClub(PersonController.people) == true{
                cell.detailTextLabel?.text = "Member"
            }
            else{
                cell.detailTextLabel?.text = "Not a Member"
            }
        }
        else if membersOnly == true{
            let member = PersonController.members[indexPath.row]
            cell.textLabel?.text = "\(member.firstName) \(member.lastName) Age: \(member.age)"
            cell.detailTextLabel?.text = "Member"
        }

        return cell
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
