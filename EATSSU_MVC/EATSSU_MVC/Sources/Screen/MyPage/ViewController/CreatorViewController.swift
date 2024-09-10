//
//  CreatorViewController.swift
//  EATSSU
//
//  Created by Jiwoong CHOI on 9/11/24.
//

// Swift Module
import UIKit

// External Module
import SnapKit

class CreatorViewController: BaseViewController {
  
  // MARK: - Properties

  // View Properties
  private let creatorsView = CreatorsView()
  
  // MARK: - View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()

    self.connectView()
  }
  
  // MARK: - Methods

  private func connectView() {
    view.addSubview(creatorsView)
    
    creatorsView.snp.makeConstraints { make in
      make.top.equalToSuperview().inset(103)
      make.leading.trailing.equalToSuperview().inset(24)
      make.bottom.equalToSuperview().inset(52)
    }
  }
}
