//
//  TeamInfoViewController.swift
//  SwiftQuiz
//
//  Created by Келлер Дмитрий on 26.04.2023.
//

import UIKit

class TeamInfoViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var images: [String] = ["image1","image2","image3"]
    var frame = CGRect(x: 10, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.isPagingEnabled = true
        
        for index in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: images[index])
            imageView.contentMode = .center
            self.scrollView.addSubview(imageView)
        }
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width * CGFloat(images.count), height: scrollView.frame.size.height)
        scrollView.delegate = self
        
        segmentedControl.removeAllSegments()
        for index in 0..<images.count {
            segmentedControl.insertSegment(with: UIImage(named: images[index]), at: index, animated: false)
        }
        segmentedControl.selectedSegmentIndex = 0
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x/scrollView.frame.size.width
        segmentedControl.selectedSegmentIndex = Int(page)
    }
}


