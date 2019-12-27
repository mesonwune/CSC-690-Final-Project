
import MapKit
import UIKit


final class childCenterAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
        super.init()
    }

var region: MKCoordinateRegion {
    let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    return MKCoordinateRegion(center: coordinate, span: span)
    }
}

class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        let asiCenterCoordinate = CLLocationCoordinate2D(latitude: 37.722120, longitude: -122.478910)
        let asiCenterAnnotation = childCenterAnnotation(coordinate: asiCenterCoordinate, title: "ASI Early Childhood Education Center", subtitle: "ECEC provides a high-quality, convenient, and affordable educational setting.")
        
        mapView.addAnnotation(asiCenterAnnotation)
        mapView.setRegion(asiCenterAnnotation.region, animated: true)
    }
}
extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let childCenterAnnotationView
            = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView {
            childCenterAnnotationView.animatesWhenAdded = true
            childCenterAnnotationView.titleVisibility = .adaptive
            childCenterAnnotationView.titleVisibility = .adaptive
            
            return childCenterAnnotationView
        }
        return nil
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func cancelDownload(sender: AnyObject) {
        dismiss(animated: true, completion: nil)

    }
}
