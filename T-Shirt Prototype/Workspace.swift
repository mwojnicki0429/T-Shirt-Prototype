//
//  Workspace.swift
//  T-Shirt Prototype
//
//  Created by Matthew Wojnicki on 11/14/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class Workspace: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onMenuPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Menu", message: nil, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIButton) { (button) in
            button.
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(cancelAction)

        let addAction = UIAlertAction(title: "Add", style: UIAlertAction.Style.default) { (action) in
            let nameTextField = alert.textFields?[0]
            let locationTextField = alert.textFields?[1]
            let numberOfStudentsTextField = alert.textFields?[2]
            let webPageTextField = alert.textFields?[3]
            
            let newCollege = College(Name: nameTextField!.text!, Location: locationTextField!.text!, NumberOfStudents: numberOfStudentsTextField!.text!, Image: nil, Webpage: webPageTextField!.text!, Crest: nil)
            self.collegeArray.append(newCollege)
            self.myTableView.reloadData()
        }

        alert.addAction(addAction)
        present(alert, animated: true, completion: nil)
    }
    

}
