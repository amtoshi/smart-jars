//
//  ViewController.swift
//  Smart Jars
//
//  Created by Ashutosh Mane on 23/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    let balanceData1=["200","4000","640", "Smart Jar"]
    let balanceData2=["Euro", "USD" ,"JPY", "lets go!"]

    @IBOutlet weak var balanceCollectionView: UICollectionView!
    
    @IBOutlet weak var balancesFlowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var balancesTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        balanceCollectionView.delegate = self
        balanceCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    private func setup(){
        balancesTitle.font = Design.Fonts.Title
        balancesTitle.textColor = Design.Color.wise_blue
        
    }


}

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let balanceCell = collectionView.dequeueReusableCell(withReuseIdentifier: BalanceCollectionViewCell.reuseIdentifier, for: indexPath) as! BalanceCollectionViewCell
        balanceCell.setup()
        balanceCell.amountLabel.text = balanceData1[indexPath.row]
        balanceCell.currencyLabel.text = balanceData2[indexPath.row]
    
        return balanceCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
}

class BalanceCollectionViewCell:UICollectionViewCell{
    static fileprivate let reuseIdentifier = "balance"
    
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    
    func setup(){
        amountLabel.font = Design.Fonts.Title
        amountLabel.textColor = .darkGray
        currencyLabel.font = Design.Fonts.Body
        currencyLabel.textColor = .lightGray
        self.backgroundColor = Design.Color.wise_backgroundGrey
    }
    
    
}
