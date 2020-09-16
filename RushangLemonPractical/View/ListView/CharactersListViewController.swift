//
//  CharactersListViewController.swift
//  RushangLemonPractical
//
//  Created by Rushang Prajapati on 15/09/20.
//  Copyright © 2020 Rushang. All rights reserved.
//

import UIKit

class CharactersListViewController: UIViewController {

    var charactersListVM = CharactersListViewModel()
    
    
    @IBOutlet weak var tblCharList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblCharList.rowHeight = 130.0
        // Do any additional setup after loading the view.
        //Retrive data from API.
        self.fetchCharactersWithDetail()

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


extension CharactersListViewController{
    
    func fetchCharactersWithDetail() {
        
        //ViewModel will send data from API
        charactersListVM.fetchCharactersListwithDetail{ isSuccess  in
            //Check success
            if isSuccess{
                DispatchQueue.main.async {
                    //Star Wars characters in alphabetical order
                    self.charactersListVM.charList = self.charactersListVM.charList.sorted(by: { (character1, character2) -> Bool in
                        return character1.name.compare(character2.name) == ComparisonResult.orderedAscending
                    })
                    self.tblCharList.reloadData()
                }
            }
            
        }
        
    }
    
}
// MARK: - Tablview Datasource & Delegate Method
extension CharactersListViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: KEY.CELL.CHARACTERS_TABLE, for: indexPath)
        cell.textLabel!.text = charactersListVM.charList[indexPath.row].name;
        cell.detailTextLabel!.text = charactersListVM.charList[indexPath.row].gender;
        if indexPath.row == charactersListVM.charList.count - 1 { // last cell
            if totalCount > charactersListVM.charList.count  { // more items to fetch
                pageCount = pageCount + 1;
                self.fetchCharactersWithDetail()
            }
            
        }
        cell.layer.transform = CATransform3DMakeScale(0.1,0.1,1)
        UIView.animate(withDuration: 0.3, animations: {
            cell.layer.transform = CATransform3DMakeScale(1.05,1.05,1)
            },completion: { finished in
                UIView.animate(withDuration: 0.1, animations: {
                    cell.layer.transform = CATransform3DMakeScale(1,1,1)
                })
        })


        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersListVM.charList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailVC = (self.storyboard?.instantiateViewController(withIdentifier: KEY.VIEWCONTROLLERS.DETAILVIEW))! as! CharacterDetailViewController
        detailVC.characterDetail = self.charactersListVM.charList[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
