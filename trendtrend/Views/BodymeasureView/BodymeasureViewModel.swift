import Foundation
import SwiftUI

class BodymeasureViewModel: ObservableObject {
    @Published var sleevevalueoneText: String = ""
    @Published var chestvalueoneText: String = ""
    @Published var waistvalueoneText: String = ""
    @Published var inseamvalueoneText: String = ""
    @Published var heightvalueoneText: String = ""
    @Published var weightvalueoneText: String = ""
}
