//
//  ViewController.swift
//  ModalApp
//
//  Created by Satoshi Ota on 2021/07/13.
//

import UIKit
import BLTNBoard

class ViewController: UIViewController {
    
    private lazy var boardManager: BLTNItemManager = {
        let item = BLTNPageItem(title: "書籍名を追加して下さい")
        item.image = UIImage(named: "books")
        item.actionButtonTitle = "追加"
        item.alternativeButtonTitle = "キャンセル"
        item.descriptionText = "3ワードノート術"
        
        item.actionHandler = { _ in
            ViewController.didTapBoardContinue()
        }
        
        item.alternativeHandler = { _ in
            ViewController.didTapBoardSkip()
        }
        
        return BLTNItemManager(rootItem: item)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addButton(_ sender: Any) {
        boardManager.showBulletin(above: self)
    }
    
    static func didTapBoardContinue() {
        
    }
    
    static func didTapBoardSkip() {
        
    }
}

