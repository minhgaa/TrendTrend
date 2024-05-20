
import Foundation
import SwiftUI

class SignupViewModel: ObservableObject {
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var usernameText: String = ""
}

