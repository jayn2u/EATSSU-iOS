//
//  LoginView.swift
//  EatSSU-iOS
//
//  Created by 최지우 on 2023/06/26.
//

// Swift Module
import UIKit

// External Module
import SnapKit
import Then

final class LoginView: BaseUIView {
    
    // MARK: - UI Components
    
  private let logoImage = UIImageView().then {
    $0.image = EATSSUAsset.Images.Version2.authLogo.image
  }
  
  private let logoSubTitle = UIImageView().then { imageView in
    imageView.image = EATSSUAsset.Images.Version2.authSubTitle.image
  }
    
    let appleLoginButton = UIButton().then {
      $0.setImage(EATSSUAsset.Images.Version2.appleLoginButton.image, for: .normal)
    }

    let kakaoLoginButton = UIButton().then {
      $0.setImage(EATSSUAsset.Images.Version2.kakaoLoginButton.image, for: .normal)
    }
    
    let lookingWithNoSignInButton = UIButton().then {
      $0.setImage(EATSSUAsset.Images.Version2.lookAroundButton.image, for: .normal)
    }
    
    override func configureUI() {
        self.addSubviews(
          logoImage,
          logoSubTitle,
          appleLoginButton,
          kakaoLoginButton,
          lookingWithNoSignInButton
        )
    }
    
    override func setLayout() {
        logoImage.snp.makeConstraints { make in
          make.centerX.equalToSuperview()
          make.top.equalToSuperview().inset(223)
        }
        
      logoSubTitle.snp.makeConstraints { make in
        make.centerX.equalToSuperview()
        make.top.equalTo(logoImage.snp.bottom)
      }
     
      appleLoginButton.snp.makeConstraints { make in
        make.centerX.equalToSuperview()
        make.bottom.equalTo(self.safeAreaLayoutGuide).inset(151)
      }
      
      kakaoLoginButton.snp.makeConstraints { make in
        make.centerX.equalToSuperview()
        make.bottom.equalTo(self.safeAreaLayoutGuide).inset(90)
      }
      
      lookingWithNoSignInButton.snp.makeConstraints { make in
        make.centerX.equalToSuperview()
        make.bottom.equalTo(self.safeAreaLayoutGuide).inset(30)
      }
    }
}
