//
//  ViewController.swift
//  idm362-wmo26
//
//  Created by Wynn O'Donnell on 1/25/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    var randomLat = ""
    var randomLong = ""
    //func randomgen(_sender: Any) -> Float {
       // let randomLat = Float.random(in: 37.6...37.9)
        //let randomLong = Float.random(in: -122.5 ... -122.2)
       // return randomLong
    //}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var toggleFlag: Bool = true
    
    @IBOutlet weak var bookmarkBtn: UIButton!
    
    @IBAction func bookmarkBtnFun(_ sender: Any) {
        if (toggleFlag == true) {
            bookmarkBtn.setBackgroundImage(UIImage(systemName: "bookmark.fill"), for: UIControl.State.normal)

            toggleFlag = false
        } else {
            bookmarkBtn.setBackgroundImage(UIImage(systemName: "bookmark"), for: UIControl.State.normal)
            toggleFlag = true
        }
    }
    @IBOutlet weak var label: UILabel!
    
    @IBAction func nodeGen(_ sender: Any) {
        
        let randomLat = Float.random(in: 37.6...37.9)
        let randomLong = Float.random(in: -122.5 ... -122.2)
        
        label.text =  String("GPS Coordinates: \(randomLat), \(randomLong)")
        
    }
    @IBAction func openMaps(_ sender: Any) {
        //definiting the destination
        let randomLat = Float.random(in: 37.6...37.9)
        let randomLong = Float.random(in: -122.5 ... -122.2)
        label.text =  String("GPS Coordinates: \(randomLat), \(randomLong)")
        
        let latitude:CLLocationDegrees = CLLocationDegrees((randomLat))
        let longitude:CLLocationDegrees = CLLocationDegrees((randomLong))
        
        let regionDistance:CLLocationDistance = 1000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Your Node"
        mapItem.openInMaps(launchOptions: options)
    }

    

}

