//
//  GithubCell.swift
//  GithubDemo
//
//  Created by Grace Egbo on 2/11/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class GithubCell: UITableViewCell {
    
    @IBOutlet weak var projectLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starCountLabel: UILabel!
    @IBOutlet weak var forkCountLabel: UILabel!
    
    
    var repo: GithubRepo! {
        didSet{
            projectLabel.text = repo.name
            authorLabel.text = "by "+repo.ownerHandle!
            descriptionLabel.text = repo.repoDescription
            starCountLabel.text = "\(repo.stars!)"
            forkCountLabel.text = "\(repo.forks!)"
            print(forkCountLabel.text)
            authorImageView.setImageWithURL(NSURL(string: repo.ownerAvatarURL!)!)
        }
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
