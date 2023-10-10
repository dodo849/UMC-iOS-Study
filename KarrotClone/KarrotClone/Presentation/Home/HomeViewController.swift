//
//  HomeViewController.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/10/23.
//

import Foundation
import UIKit

import SnapKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    fileprivate let cellId = "SellTableViewCell"
    
    let container: UIView = .init()
    let header: HomeHeader = .init()
    let tableView: UITableView = .init()
    let wirteButton: WirteButton = .init()
    
    let tableData = sellProducts
    
    override func setContent() {
        
    }
    
    override func setStyle() {
        tableView.showsVerticalScrollIndicator = false
    }
    
    override func setDelegate() {
        
        // Delegate 및 datasource 지정
        tableView.delegate = self
        tableView.dataSource = self
        // 셀 id 등록
        tableView.register(
            SellTableViewCell.self,
            forCellReuseIdentifier: cellId
        )
        
    }
    
    override func setHierarchy() {
        view.addSubview(container)
        container.addSubview(tableView)
        container.addSubview(header)
        
        container.addSubview(wirteButton)
    }
    
    override func setLayout() {
        
        container.snp.makeConstraints {
            $0.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        header.snp.makeConstraints{
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(40)
        }
        
        tableView.snp.makeConstraints {
            $0.top.equalTo(header.snp.bottom)
            $0.bottom.equalToSuperview()
            $0.left.equalToSuperview().offset(15)
            $0.right.equalToSuperview().offset(-15)
        }
        
        wirteButton.snp.makeConstraints {
            $0.trailing.bottom.equalToSuperview().inset(20)
        }
    }
    
    override func setBind() { }
    
    
    // MARK: - Table View Method
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? SellTableViewCell else { return UITableViewCell() }
        cell.configure(tableData[indexPath.row])
        cell.selectionStyle = .none // 선택될때 배경색 바뀌는 것 없애기
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 클릭 이벤트 설정
    }
    
}
