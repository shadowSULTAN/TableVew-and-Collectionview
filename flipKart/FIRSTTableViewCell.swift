//
//  FIRSTTableViewCell.swift
//  flipKart
//
//  Created by ddukk15 on 29/10/22.
//

import UIKit

class FIRSTTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        super.awakeFromNib()
        self.colleView.delegate = self
        self.colleView.dataSource = self
        
    }
    var flipImage = ["img","immg","immmg"]
    
    
    @IBOutlet weak var colleView: UICollectionView!
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imRcell", for: indexPath) as? ImCollectionViewCell
        
        cell?.carasoul.image = UIImage(named: flipImage[indexPath.row])
        
        
        return cell!
        
        
    }
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
