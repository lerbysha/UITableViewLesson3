//
//  ViewController.swift
//  InstaCopy
//
//  Created by itisioslab on 26.09.2018.
//  Copyright © 2018 FirstGroupCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var pubCount: UILabel!
    @IBOutlet weak var folCount: UILabel!
    @IBOutlet weak var myFolCount: UILabel!
    @IBOutlet weak var nick: UILabel!
    @IBOutlet weak var status: UILabel!
    
    let petya = Person(image:UIImage(named: "ava")!, likeCount: "123", nick: "RealMedvedev", pubCount: "13", folCount:"1.2m", myFolCount:"143", status: "I'M HAPPY ")
    
    
    private lazy var firstViewController: FirstViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    private lazy var secondViewController: SecondViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    private lazy var thirdViewController: ThirdViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    static func viewController() -> ViewController {
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
        
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        updateView()
    }
    
    
    private func add(asChildViewController viewController: UIViewController) {
        
        // Add Child View Controller
        addChildViewController(viewController)
        
        // Add Child View as Subview
        containerView.addSubview(viewController.view)
        
        // Configure Child View
        viewController.view.frame = containerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParentViewController: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }
    
    
    private func updateView() {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            remove(asChildViewController: secondViewController)
            remove(asChildViewController: thirdViewController)
            add(asChildViewController: firstViewController)
        case 1:
            remove(asChildViewController: thirdViewController)
            remove(asChildViewController: firstViewController)
            add(asChildViewController: secondViewController)
        case 2:
            remove(asChildViewController: secondViewController)
            remove(asChildViewController: firstViewController)
            add(asChildViewController: thirdViewController)
        default:
            break
        }
    }
    
    func setupView() {
        updateView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        
        avatarImage.image = petya.image
        nick.text = petya.nick
        folCount.text = petya.folCount
        myFolCount.text = petya.myFolCount
        status.text = petya.status
        pubCount.text = petya.pubCount
        
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        avatarImage.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

