//
//  MyViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 7.04.2023.
//

import Foundation
import UIKit


class MyViewController: UIViewController {

    private let scrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        // Add the scroll view to the view controller's view
        view.addSubview(scrollView)

        // Set the constraints to fill the view controller's view
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        // Add some content to the scroll view
        let contentView = UIView()
        scrollView.addSubview(contentView)

        // Set the constraints for the content view to be equal to the scroll view's
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])

        // Add some subviews to the content view
        let label = UILabel()
        label.text = "This is some scrollable content."
        contentView.addSubview(label)

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])

        // Set the content size of the scroll view to match the size of the content view
        scrollView.contentSize = contentView.bounds.size
    }
}
