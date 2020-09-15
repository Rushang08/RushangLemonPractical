//
//  CharacterDetailViewController.swift
//  RushangLemonPractical
//
//  Created by Rushang Prajapati on 15/09/20.
//  Copyright © 2020 Rushang. All rights reserved.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    @IBOutlet weak var tblDetail: UITableView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblBDate: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblMass: UILabel!
    @IBOutlet weak var lblHairColor: UILabel!
    @IBOutlet weak var lblSkinColor: UILabel!
    @IBOutlet weak var lblEyeColor: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    var characterDetail : CharactersListModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBasicData()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//filmName
}
// MARK: - Tablview Datasource & Delegate Method
extension CharacterDetailViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: KEY.CELL.DETAIL_TABLE, for: indexPath)
        cell.textLabel!.text = "\(indexPath.row)"
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterDetail.films.count
    }
}

extension CharacterDetailViewController{
    
    
    func setupBasicData(){
        lblGender.text = self.characterDetail.gender
        lblName.text = self.characterDetail.name
        lblBDate.text = self.characterDetail.birth_year
        lblHeight.text = self.characterDetail.height
        lblEyeColor.text = self.characterDetail.eye_color
        lblHairColor.text = self.characterDetail.hair_color
        lblSkinColor.text = self.characterDetail.skin_color
        lblMass.text = self.characterDetail.mass
        tblDetail.reloadData()
    }
    
}
