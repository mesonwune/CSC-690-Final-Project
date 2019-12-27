

protocol SectionType: CustomStringConvertible {
    var containsSwitch: Bool {get}
}

enum SettingsSection: Int, CaseIterable, CustomStringConvertible {
    case Profile
    case Notifications
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Notifications: return "Notifications"
        }
    }
}

enum ProfileOptions: Int, CaseIterable, SectionType {
    case editProfile
    
    var containsSwitch: Bool{
        return false
    }
    
    var description: String {
        switch self {
        case .editProfile: return "Edit Profile"
        }
    }
}

enum NotificationsOptions: Int, CaseIterable, SectionType {
    case banners
    case email
    case badges
    case sounds
    
    var containsSwitch: Bool {
           switch self {
           case .banners: return true
           case .email: return true
           case .badges: return true
           case .sounds: return true
        
           }
       }
    
    var description: String {
        switch self {
        case .banners: return "Banners"
        case .email: return "Email"
        case .badges: return "Badges"
        case .sounds: return "Sounds"
        }
    }
}
