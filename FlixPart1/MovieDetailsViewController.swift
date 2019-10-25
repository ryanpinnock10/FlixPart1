//
//  MovieDetailsViewController.swift
//  FlixPart1
//
//  Created by Ryan Pinnock on 10/24/19.
//  Copyright © 2019 Ryan Pinnock. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backDrop: UIImageView!
    
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (movie["title"])
        // Do any additional setup after loading the view.
        
        titleLabel.text = movie["title"] as? String
        
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        
        synopsisLabel.sizeToFit()   
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        let PosterPath = movie["poster_path"] as! String
        
        let PosterURL = URL(string: baseUrl + PosterPath)!
        
        posterView.af_setImage(withURL: PosterURL)
        
        
        let backDropPath = movie["backdrop_path"] as! String
        
        let backDropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backDropPath)!
        
        backDrop.af_setImage(withURL: backDropURL)
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
