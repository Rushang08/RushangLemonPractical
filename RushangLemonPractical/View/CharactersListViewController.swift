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
        //Retrive data from API.
        fetchCharactersNameWithDetail()
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

}


extension CharactersListViewController{
    
    func fetchCharactersNameWithDetail() {
        
        //ViewModel will send data from API
        charactersListVM.fetchCharactersListwithDetail{ isSuccess  in
            //Check success
            if isSuccess{
                DispatchQueue.main.async {
                    self.tblCharList.reloadData()
                }
            }
            
        }

        
    }
    
    
}
// MARK: - Tablviewe Datasource & Delegate Method
extension CharactersListViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCharacters", for: indexPath)
        cell.textLabel!.text = charactersListVM.charList[indexPath.row].name;
        cell.detailTextLabel!.text = charactersListVM.charList[indexPath.row].gender;
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersListVM.charList.count
    }
}
