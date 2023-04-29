//
//  TeamViewController.swift
//  SwiftQuiz
//
//  Created by Дмитрий Федоров on 27.04.2023.
//

import UIKit

final class TeamViewController: UIViewController, UIScrollViewDelegate  {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    
    var team = Team.getTeam()
    
    let images =  ["Sergei", "DmitryF", "Stanislav", "Vitaly", "DmitryK"]
    let names = ["Cергей Захаров", "Дмитрий Федоров", "Станислав", "Виталий Сабин", "Дмитрий Келлер"]
    var currentIndex = 0
    
    var frame = CGRect(x: 0, y: 0, width: 338, height: 338)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamLabel.text = """
 Тимлид - Cергей Захаров
 Команда:
 Дмитрий Федоров,
 Виталий Сабин,
 Станислав Сазонов,
 Дмитрий Келлер
"""
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true
        
        for index in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imageView = UIImageView(frame: CGRect(x: scrollView.frame.size.width * CGFloat(index), y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height))
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: images[index])
            self.scrollView.addSubview(imageView)
            
        }
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width * CGFloat(images.count), height: scrollView.frame.size.height)
        scrollView.delegate = self
        
        nameLabel.text = names[currentIndex]
        
    }
    
    @IBAction func pageControlAction(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        currentIndex = currentPage
        let x = CGFloat(currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPoint(x: x, y: 0), animated: true)
        nameLabel.text = names[currentIndex]
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = page
        currentIndex = page
        nameLabel.text = names[currentIndex]
    }
    
}
