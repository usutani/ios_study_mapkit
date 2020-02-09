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
    
    let LOC_COORD_KOBE_NUNOBIKI_FALLS = CLLocationCoordinate2D(latitude: 34.709692, longitude: 135.193819)
    let LOC_COORD_KOBE_MERIKEN_PARK = CLLocationCoordinate2D(latitude: 34.682494, longitude: 135.188523)
    let LOC_COORD_KOBE_ARIMA_ONSEN = CLLocationCoordinate2D(latitude: 34.797844, longitude: 135.247635)

    let COORD_SPAN = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.001)
    
    //MARK: Properties
    @IBOutlet weak var mapview: MKMapView!
    
    var locCoordAnnotations: [CLLocationCoordinate2D] = []
    
    //MARK: Initialization
    
    //MARK Instance Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initAnnotations()
        addAnnotationsToMapView()
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
    
    private func initAnnotations() {
        locCoordAnnotations.append(LOC_COORD_KOBE_NUNOBIKI_FALLS)
        locCoordAnnotations.append(LOC_COORD_KOBE_MERIKEN_PARK)
        locCoordAnnotations.append(LOC_COORD_KOBE_ARIMA_ONSEN)
    }
    
    private func addAnnotationsToMapView() {
        mapview.removeAnnotations(mapview.annotations)
        for lca in locCoordAnnotations {
            let a = MKPointAnnotation()
            a.coordinate = lca
            mapview.addAnnotation(a)
        }
    }
    
}

