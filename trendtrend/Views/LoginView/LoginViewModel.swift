import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var usernameText: String = ""
}
