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

public class CoursesViewController: UIViewController {
    
    let dataFetchable: DataFetchable
    
    public init(dataFetchable: DataFetchable) {
        self.dataFetchable = dataFetchable
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        dataFetchable.fetchCourseNames { courses in
            print(courses)
        }

        // Do any additional setup after loading the view.
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
