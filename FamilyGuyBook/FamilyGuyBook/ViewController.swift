//
//  ViewController.swift
//  FamilyGuyBook
//
//  Created by Salih Yusuf Göktaş on 12.12.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myGriffins = [Griffin]()
    var chosenGriffin : Griffin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Griffin Objects
        
        let peter = Griffin(griffinName: "Peter Griffin", griffinJob: "Safety Inspector", griffinImage: UIImage(named: "PeterGriffin")!)
        let stewie = Griffin(griffinName: "Stewie Griffin", griffinJob: "Baby", griffinImage: UIImage(named: "StewieGriffin")!)
        let brian = Griffin(griffinName: "Brian Griffin", griffinJob: "Dog", griffinImage: UIImage(named: "BrianGriffin")!)
        
         
        myGriffins.append(peter)
        myGriffins.append(stewie)
        myGriffins.append(brian)


        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGriffins.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myGriffins[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenGriffin = myGriffins[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedGriffin = chosenGriffin
        }
    }


}

