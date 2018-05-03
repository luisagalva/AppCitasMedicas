//
//  ViewController.swift
//  Consultorio
//
//  Created by Luisa Beatriz Garcia Alva on 07/03/18.
//  Copyright © 2018 Luisa Beatriz Garcia Alva. All rights reserved.
//
import UIKit

enum MyTheme {
    case light
}

class ViewController: UIViewController {
    
    var theme = MyTheme.light
    
    
   
    override func viewDidLoad() {
        self.navigationItem.setHidesBackButton(true, animated:true);
        super.viewDidLoad()
        self.title = "Mis Consultas"
        self.navigationController?.navigationBar.isTranslucent=false
        self.view.backgroundColor=Style.bgColor
        
        view.addSubview(calenderView)
        calenderView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive=true
        calenderView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive=true
        calenderView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive=true
        calenderView.heightAnchor.constraint(equalToConstant: 365).isActive=true
        
        
        
      
        let rightBarBtn = UIBarButtonItem(title: "perfil", style: .plain, target: self, action: #selector(ViewController.myLeftSideBarButtonItemTapped(_:)))
     
       
        
         self.navigationItem.rightBarButtonItem = rightBarBtn
     
        
            Style.themeLight()
    }
    
    @objc func myLeftSideBarButtonItemTapped(_ sender:UIBarButtonItem!)
    {
        print("myLeftSideBarButtonItemTapped")
        performSegue(withIdentifier: "perfil",
                     sender: self)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        calenderView.myCollectionView.collectionViewLayout.invalidateLayout()
    }
    
    
    
    let calenderView: CalenderView = {
        let v=CalenderView(theme: MyTheme.light)
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
}


