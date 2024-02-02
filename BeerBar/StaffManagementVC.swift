//
//  StaffManagementVC.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 22.01.2024.
//

import UIKit

class StaffManagementVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var todayRevenueLabel: UILabel!
    
    @IBOutlet weak var newShiftButton: UIButton!
    
    @IBOutlet weak var totalRevenueLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var aboutDeveloperButton: UIButton!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        
        setupLabels()
        
        setupButtons()
        
        super.viewDidLoad()
    }
    
    // MARK: - Private Methods
    
    private func setupLabels() {
        
        setupTodayRevenueLabel()
        
        setupTotalRevenueLabel()
    }

    private func setupTodayRevenueLabel() {
        
        todayRevenueLabel.text = "Today's Revenue: \n$0.00"
    }

    private func setupTotalRevenueLabel() {
        
        totalRevenueLabel.text = "Total Revenue: \n$0.00"
    }
    
    private func setupButtons() {
        
        setupNewShiftButton()
        
        setupResetButton()
        
        setupAboutDeveloperButton()
    }

    private func setupNewShiftButton() {
        
        newShiftButton.setTitle("New Shift", for: .normal)
    }

    private func setupResetButton() {
        
        resetButton.setTitle("Reset", for: .normal)
    }

    private func setupAboutDeveloperButton() {
        
        aboutDeveloperButton.setTitle("About Developer", for: .normal)
    }
    
    // MARK: - Actions
    
    @IBAction func newShiftButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func aboutDeveloperButtonPressed(_ sender: UIButton) {
        
    }
    
}
