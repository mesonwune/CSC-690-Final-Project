import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var memorygameshit: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://auptimistickids.netlify.com")
        let request = URLRequest(url: url!)
        memorygameshit.load(request)
    }
    @IBAction func cancelDownload(sender: AnyObject) {
        dismiss(animated: true, completion: nil)

    }
}

