//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Duliba Sviatoslav on 24.05.2022.
//

import UIKit

class AthleteFormViewController: UIViewController {
    // MARK: - Outlet
        @IBOutlet weak var nameTextField: UITextField!
        @IBOutlet weak var ageTextField: UITextField!
        @IBOutlet weak var teamTextField: UITextField!
        @IBOutlet weak var leageTextField: UITextField!
    
    var athlete: Athlete?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

        // Do any additional setup after loading the view.
    }
    
    func updateView() {
            guard let athlete = athlete else {return}

            nameTextField.text = athlete.name
            ageTextField.text = athlete.age
            leageTextField.text = athlete.league
            teamTextField.text = athlete.team
        }
    // MARK: - Action
        @IBAction func saveButtonTapped(_ sender: UIButton) {
            guard let name = nameTextField.text,
                let age = ageTextField.text,
                let league = leageTextField.text,
                let team = teamTextField.text else {return}
            
            athlete = Athlete(name: name, age: age, league: league, team: team)
            
            performSegue(withIdentifier: "unwindToAthleteTable", sender: self)
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
