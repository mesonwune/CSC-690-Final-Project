
import UIKit
import MessageUI

class ContactUsViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var messageTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendButton(_ sender: Any) {
        let toRecipient = ["jreyes20@mail.sfsu.edu"]
        let mailController: MFMailComposeViewController = MFMailComposeViewController()
        mailController.mailComposeDelegate = self
        mailController.setToRecipients(toRecipient)
        mailController.setSubject("Support Needed")
        mailController.setMessageBody("Name: \(nameTextField.text!) \n\n Email: \(emailTextField.text!) \n\n Message: \(messageTextField.text!)", isHTML: false)
        self.present(mailController, animated: true, completion: nil)
        
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Cancelled")
            
        case MFMailComposeResult.failed.rawValue:
            print("Failed")
            
        case MFMailComposeResult.saved.rawValue:
            print("Saved")
            
        case MFMailComposeResult.sent.rawValue:
            print("Sent")
            
        default:
            break
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func dismissKeyboard(_ sender: Any) {
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
