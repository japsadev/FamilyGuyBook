//
//  detailsVC.swift
//  FamilyGuyBook
//
//  Created by Salih Yusuf Göktaş on 12.12.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedGriffin : Griffin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedGriffin?.name
        jobLabel.text = selectedGriffin?.job
        imageView.image = selectedGriffin?.image

        // Do any additional setup after loading the view.
    }
    


}
