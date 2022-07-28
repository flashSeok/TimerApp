//
//  ViewController.swift
//  TimerApp
//
//  Created by 김현석 on 2022/07/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    func configureUI() {
        mainLabel.text = "초를 선택하세요"
        slider.setValue(0.5, animated: true)
        
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        // 슬라이더의 밸류 값을 가지고 메인 레이블의 텍스트를 세팅.
        let seconds = Int(slider.value * 60)
        // print(seconds)
    
        mainLabel.text = "\(seconds) 초"
        
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 1초씩 지나갈 때마다 무언가를 실행
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    
        // 초기화 세팅.
        // 슬라이더 가운데 설정.
        mainLabel.text = "초를 선택하세요"
        
        // slider 기본 값은 최소0 최대 1임.(0 ~ 1) 그래서 가운데는 0.5
        slider.setValue(0.5, animated: true)
        
    }
    
}

