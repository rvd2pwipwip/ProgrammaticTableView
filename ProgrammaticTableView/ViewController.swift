//
//  ViewController.swift
//  ProgrammaticTableView
//
//  Created by Herve Desrosiers on 2020-02-16.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    // 1. define an array containing the data to display in tableView
    var characters = ["Link", "Zelda", "Ganondorf", "Midna"]
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            tableView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            tableView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor),
            tableView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor)
        ])
//        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    private let tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
}
// part of step 2.
// extend ViewController with UITableViewDataSource protocol to tell tableview that ViewController will store the data for all rows
extension ViewController {
    // Return the number of rows for the table; called once when tableView loads
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count // one row for each item in characters array
    }
    // Provide a cell object for each row; called for each row of tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Fetch a cell of the appropriate type (identifier), reuse or create if no reusable cells ready
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // Configure the cell’s contents.
        cell.textLabel?.text = characters[indexPath.row] // also reassign cell content when cells are reused

        return cell
    }
}
