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
        
        setupButtons()
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        setupLabels()
        
        super.viewWillAppear(animated)
    }
    
    // MARK: - Private Methods
    
    private func setupLabels() {
        
        setupTodayRevenueLabel()
        
        setupTotalRevenueLabel()
    }

    private func setupTodayRevenueLabel() {
        
        todayRevenueLabel.text = "Today's Revenue: \n$\(BeerManager.shared.todayRevenue)"
    }

    private func setupTotalRevenueLabel() {
        
        totalRevenueLabel.text = "Total Revenue: \n$\(BeerManager.shared.totalRevenue)"
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
        
        BeerManager.shared.totalRevenue += BeerManager.shared.todayRevenue
        
        BeerManager.shared.todayRevenue = 0
        
        setupTotalRevenueLabel()
        
        setupTodayRevenueLabel()
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        BeerManager.shared.todayRevenue = 0
        
        BeerManager.shared.totalRevenue = 0
        
        setupTodayRevenueLabel()
        
        setupTotalRevenueLabel()
    }
    
}
