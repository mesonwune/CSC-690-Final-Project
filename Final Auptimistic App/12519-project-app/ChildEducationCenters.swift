

import Foundation

class Center {
    var name: String
    var address: String
    var phone: String
    var email: String
    
    init(name: String, address: String, phone: String, email: String) {
        self.name = name
        self.address = address
        self.phone = phone
        self.email = email
    }
}

var centers: [Center] = [
    Center(name: "Early Childhood Education Center", address: "1650 Holloway Ave C-134 San Francisco, Ca", phone: "(415) 338-2403", email: "ecec@asi.sfsu.edu"),
    Center(name: "First 5: San Francisco", address: "1663 Mission Street, 7th Floor San Francisco, Ca", phone: "(415) 682-3248", email: "info@supportforfamilies.org"),
        Center(name: "Bright Horizons at Kansas Street", address: "200 Kansas St. San Francisco, CA 94103", phone: "(415) 863-2533", email: "info@brighthorizons.org"),
               Center(name: "Autism Center of Northern California", address: "870 Market Street, Suite 470 San Francisco, Ca 94102", phone: "(415) 391-3417", email: "info@acnc.org"),
]
