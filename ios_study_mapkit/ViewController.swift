//
//  ViewController.swift
//  ios_study_mapkit
//
//  Created by Yasuhiro Usutani on 2020/02/09.
//  Copyright © 2020 toolstudio. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    //MARK: Constants
    let LOC_COORD_KYOTO = CLLocationCoordinate2D(latitude: 34.985849, longitude: 135.758767)
    let LOC_COORD_OSAKA = CLLocationCoordinate2D(latitude: 34.702485, longitude: 135.495951)
    let LOC_COORD_KOBE = CLLocationCoordinate2D(latitude: 34.679767, longitude: 135.177994)
    
    let COORD_SPAN = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.001)
    
    //MARK: Properties
    @IBOutlet weak var mapview: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    
    @IBAction func tapKyoto(_ sender: UIButton) {
        mapview.region = MKCoordinateRegion(center: LOC_COORD_KYOTO, span: COORD_SPAN)
    }
    
    @IBAction func tapOsaka(_ sender: UIButton) {
        mapview.region = MKCoordinateRegion(center: LOC_COORD_OSAKA, span: COORD_SPAN)
    }
    
    @IBAction func tapKobe(_ sender: UIButton) {
        mapview.region = MKCoordinateRegion(center: LOC_COORD_KOBE, span: COORD_SPAN)
    }
    
    //MARK: Private Methods
    
}

