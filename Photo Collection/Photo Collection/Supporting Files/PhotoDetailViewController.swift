//
//  PhotoDetailViewController.swift
//  Photo Collection
//
//  Created by Joseph Rogers on 10/10/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    //MARK: Properties
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?
    
    //MARK: Outlets
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    
    @IBAction func addPhotoPressed(_ sender: UIButton) {
    }
    //FIXME: set theme, update views last part
    func setTheme(){
        guard let themeHelper = themeHelper?.themePreference else {return}
        if themeHelper == "Dark" {
            view.backgroundColor = UIColor.darkGray
        }else {
            view.backgroundColor = UIColor.blue
        }
    }
    
    func updateViews() {
        setTheme()
        guard let photo = photo else {fatalError("No Photo to Parse")}
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
