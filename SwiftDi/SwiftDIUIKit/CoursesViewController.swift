//
//  CoursesViewController.swift
//  SwiftDIUIKit
//
//  Created by Hoshiar Sher on 8/28/21.
//

import UIKit
public protocol DataFetchable{
    func fetchCourseNames(completion: @escaping ([String]) -> Void)
}

struct Course{
    let name:String
}

public class CoursesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
    let dataFetchable: DataFetchable
    
    private let tableView: UITableView = {
        let tabele = UITableView()
        tabele.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tabele
    }()
    
    public init(dataFetchable: DataFetchable) {
        self.dataFetchable = dataFetchable
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var courses:[Course] = []
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        view.backgroundColor = .systemBackground
        
        dataFetchable.fetchCourseNames { [weak self] names in
            self?.courses = names.map {Course(name: $0)}
            print(self?.courses)
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count == 0 ?  3 : courses.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = courses[indexPath.row].name
        return cell
    }
}
