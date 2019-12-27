
import UIKit


class EditProfileViewController: UIViewController {
    @IBAction func cancelDownload(sender: AnyObject) {
        dismiss(animated: true, completion: nil)

    }
    
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet weak var changeProfilePicture: UIButton!
    @IBOutlet var profileNameTextField: UITextField!
    @IBOutlet var profileEmailTextField: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var retypePassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func editProfileSaveButton(_ sender: Any) {
     
    }
    
    @IBAction func dismissKey(_ sender: Any) {
    self.resignFirstResponder()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
