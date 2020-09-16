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
    var charactersDetailVM = CharacterDetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tblDetail.rowHeight = 85
        setupBasicData()
        getFilmsData()

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
        cell.textLabel!.text = "\(charactersDetailVM.filmDetail[indexPath.row].title ?? "")"
        cell.detailTextLabel!.text = "Word count of opening_crawl: " + "\(self.getWordCountofopening_crawl(sentence: "\(charactersDetailVM.filmDetail[indexPath.row].openingCrawl ?? "")"))"
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersDetailVM.filmDetail.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Films"
    }

}

extension CharacterDetailViewController{
    
    
    func setupBasicData(){
        lblGender.text = "Gender: " + self.characterDetail.gender
        lblName.text = "Name: " + self.characterDetail.name
        lblBDate.text = "BirthDate: " + self.characterDetail.birth_year
        lblHeight.text = "Height: " + self.characterDetail.height
        lblEyeColor.text = "Eye Color: " + self.characterDetail.eye_color
        lblHairColor.text = "Hair Color: " + self.characterDetail.hair_color
        lblSkinColor.text = "Skin Color: " + self.characterDetail.skin_color
        lblMass.text = "Mass: " + self.characterDetail.mass
    }
    

    func getFilmsData() {
        
        let group = DispatchGroup()

        for obj in self.characterDetail.films{
            group.enter()
            
            charactersDetailVM.featchFilmsDetails(url: obj) { (isSuccess) in
                group.leave()
            }

        }

        group.notify(queue: DispatchQueue.main) {
            print("done")
            self.tblDetail.reloadData()

        }

    }
    
    func getWordCountofopening_crawl(sentence:String) -> Int {
        
        var words: [Substring] = []
        sentence.enumerateSubstrings(in: sentence.startIndex..., options: .byWords) { _, range, _, _ in
            words.append(sentence[range])
        }
        return words.count
        
    }

    
}
