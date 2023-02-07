//
//  MVVM.swift
//  GoogleLoginPractice
//
//  Created by 신승아 on 2023/02/06.
//

import UIKit

// Observable

//class Observable<T> {
//    var value: T? {
//        didSet {
//            listener?(value)
//        }
//    }
//
//    init(_ value: T) {
//        self.value = value
//    }
//
//    private var listener: ((T?) -> Void)?
//
//    func bind(_ listener: @escaping (T?) -> Void) {
//        listener(value)
//        self.listener = listener
//    }
//}
//// Model
//
//struct User: Codable {
//    let name: String
//}
//// ViewModels
//
//struct UserListViewModel {
//    var userViewModels: Observable<[UserTableViewCellViewModel]> = Observable([])
//}
//
//struct UserTableViewCellViewModel {
//    let name: String
//}
//
//// controller
//
//class MVVM: UIViewController, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//
//
//    private let tableView: UITableView = {
//        let table = UITableView()
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        return table
//    }()
//
//    override func viewDidLoad() {
//        view.addSubview(tableView)
//        tableView.frame = view.bounds
//        tableView.dataSource = self
//    }
//
//    func fetch() {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//}
//
//
