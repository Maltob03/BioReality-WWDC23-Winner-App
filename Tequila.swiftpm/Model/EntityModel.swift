//
//  Model.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 17/01/23.
//

import Foundation
import SwiftUI

struct Model {
    var color : Color
    var name : String
    var description : String
}



var modelHeart = Model(color: Color("CardColor1"), name: "heart", description: "The heart is a muscular organ in most animals. This organ pumps blood through the blood vessels of the circulatory system.The pumped blood carries oxygen and nutrients to the body, while carrying metabolic waste such as carbon dioxide to the lungs. In humans, the heart is approximately the size of a closed fist and is located between the lungs, in the middle compartment of the chest.")

var modelBrain = Model(color: Color("CardColor1"), name: "Brain", description: "The human brain is the central organ of the human nervous system, and with the spinal cord makes up the central nervous system. The brain consists of the cerebrum, the brainstem and the cerebellum. It controls most of the activities of the body, processing, integrating, and coordinating the information it receives from the sense organs, and making decisions as to the instructions sent to the rest of the body. The brain is contained in, and protected by, the skull bones of the head.")


var modelLungs = Model(color: Color("CardColor1"), name: "Lungs", description: "The lungs are the primary organs of the respiratory system in humans and most other animals, including some snails and a small number of fish. In mammals and most other vertebrates, two lungs are located near the backbone on either side of the heart. Their function in the respiratory system is to extract oxygen from the air and transfer it into the bloodstream, and to release carbon dioxide from the bloodstream into the atmosphere, in a process of gas exchange.")
