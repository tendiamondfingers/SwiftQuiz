//
//  TeamInfoViewController.swift
//  SwiftQuiz
//
//  Created by Келлер Дмитрий on 26.04.2023.
//

import UIKit

class TeamInfoViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // createScrollView()
      

    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let p = "Начинается прокрутка"
        self.scrollView.alpha = 0.50
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let p = "вызывается после прокрутки"
        self.scrollView.alpha = 1.0
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let p = "гарантирует что вернет альфу к 1"
        self.scrollView.alpha = 1.0
    }
    
//    func createScrollView() {
//        let avatarOne = UIImage(named: "2")
//        let avatarTwo = UIImage(named: "23")
//        scrollView = UIImageView(image: avatarOne)
//        scrollView = UIImageView(image: avatarTwo)
//        scrollView = UIScrollView(frame: self.view.bounds)
//       scrollView.addSubview(myImageView)
//       scrollView.contentSize = self.myImageView.bounds.size
//       scrollView.delegate = self
//        self.view.addSubview(myScrollView)
//    }
}
