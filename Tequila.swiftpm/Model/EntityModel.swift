//
//  Model.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 17/01/23.
//

import Foundation
import SwiftUI

struct Model {
    var name : String
    var description : String
}

struct SecondaryModel{
    var title: String
    var text: String
    var risk: String
    var impact: String
    var complications : String
}


var modelHeart = Model(name: "Heart", description: """
The heart is a muscular organ that pumps blood throughout the body, delivering oxygen and nutrients to the tissues and organs and removing waste products. It is one of the most important organs in the human body, and its biology is essential to understand for maintaining overall health and preventing cardiovascular diseases.

At a biological level, the heart is composed of several layers of specialized muscle tissue, including the endocardium, myocardium, and epicardium. The endocardium lines the interior of the heart, while the myocardium is the thickest layer and is responsible for the heart's contractile function. The epicardium is the outermost layer and provides a protective covering for the heart.

The heart is also divided into four chambers, with the two upper chambers called the atria and the two lower chambers called the ventricles. The right side of the heart receives deoxygenated blood from the body and pumps it to the lungs, where it is oxygenated. The left side of the heart receives oxygenated blood from the lungs and pumps it to the rest of the body.

The heart's contraction and relaxation are regulated by a complex system of electrical impulses, which originate in the sinoatrial (SA) node, the natural pacemaker of the heart. The SA node sends electrical signals to the atria, causing them to contract and push blood into the ventricles. The electrical signals then travel to the atrioventricular (AV) node, which acts as a gatekeeper, delaying the signals briefly before passing them on to the ventricles. This delay allows the ventricles to fill with blood before contracting and pumping it out to the rest of the body.

Disruptions in this complex system of electrical impulses can lead to arrhythmias or abnormal heart rhythms, such as atrial fibrillation. Other cardiovascular diseases, such as coronary artery disease and heart failure, can also affect the heart's ability to pump blood efficiently and lead to serious complications.

Preventing cardiovascular diseases and maintaining heart health requires a multifaceted approach, including a healthy diet, regular exercise, stress management, and avoiding smoking and excessive alcohol consumption. Understanding the biology of the heart is essential for developing effective treatments and interventions to prevent and manage cardiovascular diseases.

In conclusion, the heart is a complex organ with a critical role in maintaining overall health. Its biology is essential to understand for preventing cardiovascular diseases and developing effective treatments for heart-related conditions.
""")

var modelBrain = Model(name: "Brain", description: """
The brain is a highly complex and important organ that controls many of the body's functions, including movement, sensation, thought, and emotion. Understanding the biology of the brain is essential for maintaining overall health and preventing neurological disorders.

At a biological level, the brain is composed of billions of specialized nerve cells called neurons, which communicate with each other through electrical and chemical signals. These neurons are organized into different regions and networks, each responsible for different functions.

The brain is also protected by several layers of tissue, including the skull, the meninges, and the blood-brain barrier. The blood-brain barrier is a specialized layer of cells that prevents many substances from entering the brain, protecting it from toxins and infections.

The brain's functioning is controlled by a complex system of neurotransmitters, chemicals that transmit signals between neurons. These neurotransmitters include dopamine, serotonin, and norepinephrine, among others, and are involved in regulating mood, behavior, and many other functions.

Disruptions in the brain's functioning can lead to a range of neurological disorders, including Alzheimer's disease, Parkinson's disease, epilepsy, and stroke. These disorders can be caused by a variety of factors, including genetics, environmental factors, and lifestyle choices.

Maintaining brain health requires a multifaceted approach, including regular exercise, a healthy diet, stress management, and intellectual stimulation. Treatments for neurological disorders may include medications, surgery, or other interventions to improve brain function.

In conclusion, the brain is a complex organ with a critical role in controlling many of the body's functions. Understanding the biology of the brain is essential for preventing and managing neurological disorders and maintaining overall health.
""")


var modelLungs = Model(name: "Lungs", description: """
The lungs are essential organs responsible for respiration, the exchange of oxygen and carbon dioxide between the body and the environment. Understanding the biology of the lungs is important for maintaining overall health and preventing respiratory diseases.

At a biological level, the lungs are composed of specialized tissues, including bronchi, bronchioles, and alveoli. The bronchi and bronchioles are responsible for transporting air from the environment to the alveoli, where gas exchange occurs. The alveoli are small air sacs where oxygen and carbon dioxide are exchanged between the lungs and the bloodstream.

The lungs are protected by a variety of mechanisms, including mucus production, cough reflexes, and the immune system. Mucus helps trap harmful particles and prevent them from entering the lungs, while coughing helps remove any particles that do make it through. The immune system also plays a critical role in protecting the lungs from infections.

The process of breathing is regulated by a complex system of nerves and muscles, including the diaphragm, which contracts and relaxes to control the flow of air in and out of the lungs. The process of respiration also involves the exchange of gases between the lungs and the bloodstream, which is facilitated by specialized cells called red blood cells.

Disruptions in the functioning of the lungs can lead to a range of respiratory diseases, including asthma, chronic obstructive pulmonary disease (COPD), and lung cancer. These diseases can be caused by a variety of factors, including genetics, environmental factors, and lifestyle choices such as smoking.

Maintaining lung health requires a multifaceted approach, including avoiding exposure to harmful pollutants, regular exercise, and a healthy diet. Treatments for respiratory diseases may include medications, oxygen therapy, or other interventions to improve lung function.

In conclusion, the lungs are essential organs responsible for respiration and gas exchange between the body and the environment. Understanding the biology of the lungs is important for preventing and managing respiratory diseases and maintaining overall health.
""")

var fibrillation: SecondaryModel =

SecondaryModel(title: "Atrail Fibrillation", text: """
Atrial fibrillation is a common type of arrhythmia or irregular heartbeat that affects millions of people worldwide. It is characterized by rapid, chaotic electrical signals in the atria, the two upper chambers of the heart. These signals cause the atria to contract in an uncoordinated manner, leading to inefficient blood flow and an increased risk of stroke.

At a biological level, atrial fibrillation is caused by changes in the electrical properties of the heart muscle cells, or cardiomyocytes. Normally, the heart beats in a coordinated manner, with electrical impulses originating in the sinoatrial (SA) node, the natural pacemaker of the heart. The SA node sends electrical signals to the atria, causing them to contract and push blood into the ventricles, the two lower chambers of the heart. The electrical signals then travel to the atrioventricular (AV) node, which acts as a gatekeeper, delaying the signals briefly before passing them on to the ventricles. This delay allows the ventricles to fill with blood before contracting and pumping it out to the rest of the body.

In atrial fibrillation, the electrical signals in the atria become disorganized, leading to a loss of coordination between the atria and ventricles. This can result in a rapid, irregular heartbeat and an increased risk of blood clots, which can lead to stroke or other complications.

""", risk: "The underlying causes of atrial fibrillation are complex and multifactorial, with both genetic and environmental factors playing a role. Risk factors for atrial fibrillation include age, hypertension, diabetes, obesity, heart disease, and a history of smoking or heavy alcohol consumption.", impact: """
Atrial fibrillation can have a significant impact on a patient's quality of life. Patients with atrial fibrillation often experience symptoms such as palpitations, fatigue, shortness of breath, and chest pain. These symptoms can limit their ability to perform daily activities and can have a negative impact on their physical and emotional well-being.In addition to the symptoms, atrial fibrillation can also increase the risk of complications such as stroke, heart failure, and other cardiovascular conditions. The fear of these complications can cause anxiety and stress for patients, further affecting their quality of life.
""", complications: """
Atrial fibrillation can lead to various complications, some of which can be life-threatening. One of the most serious complications of atrial fibrillation is stroke. When the heart beats irregularly in atrial fibrillation, blood can pool in the heart, which can cause the formation of blood clots. These clots can travel to the brain, leading to a stroke.

Another potential complication of atrial fibrillation is heart failure. In atrial fibrillation, the heart beats irregularly and inefficiently, which can lead to weakened heart muscles and heart failure. Other complications associated with atrial fibrillation include myocardial infarction (heart attack), pulmonary embolism (blood clot in the lungs), and sudden cardiac arrest.
""")


var Parkinkson : SecondaryModel = SecondaryModel(title: "Parkinson's desease", text: """
Parkinson's disease is a chronic and progressive neurodegenerative disorder that affects the nervous system, specifically the part of the brain that controls movement. The disease is caused by the loss of dopamine-producing neurons in the substantia nigra, a region of the brain responsible for regulating movement. This loss of dopamine leads to the hallmark symptoms of Parkinson's disease, including tremors, rigidity, and bradykinesia (slowed movement).

Research into the biology of Parkinson's disease has focused on understanding the cellular and molecular mechanisms underlying the disease. One key area of research is the role of protein misfolding and aggregation in the development of Parkinson's disease. A protein called alpha-synuclein, which is found in high levels in the brains of people with Parkinson's disease, is believed to play a role in the development of the disease by forming clumps, or aggregates, that are toxic to neurons.

In addition, inflammation and oxidative stress have also been implicated in the development of Parkinson's disease. Inflammation is a normal response of the immune system to injury or infection, but chronic inflammation can be damaging to neurons. Similarly, oxidative stress, which is caused by an imbalance between the production of reactive oxygen species and the ability of cells to neutralize them, can lead to damage to neurons and contribute to the development of Parkinson's disease.
""", risk: "The exact cause of Parkinson's disease is not fully understood, but both genetic and environmental factors are believed to contribute to the development of the disease. There are a number of genetic mutations that have been linked to an increased risk of Parkinson's disease, but these mutations account for only a small percentage of cases. Environmental factors, such as exposure to toxins and pesticides, have also been associated with an increased risk of Parkinson's disease.", impact: """
Parkinson's disease can have a significant impact on a patient's quality of life. As the disease progresses, patients may experience a range of symptoms, including tremors, stiffness, slowed movements, difficulty with balance and coordination, and changes in speech and writing. These symptoms can make it difficult to perform daily activities and can lead to social isolation, depression, and anxiety.

In addition to the motor symptoms, Parkinson's disease can also cause non-motor symptoms such as sleep disturbances, cognitive impairment, and autonomic dysfunction. These symptoms can further impact a patient's quality of life.
""", complications: "Parkinson's disease can also lead to complications such as falls, injuries, and difficulties with swallowing and breathing. Patients with Parkinson's disease are also at an increased risk of developing other conditions such as dementia and depression.")

var Alzheimer : SecondaryModel = SecondaryModel(title: "Alzheimer disease", text: """
Alzheimer's disease is a progressive and irreversible neurodegenerative disorder that affects the brain, leading to cognitive decline and memory loss. The disease is characterized by the presence of abnormal protein deposits in the brain, including amyloid-beta plaques and tau tangles. These deposits cause damage to neurons, leading to the cognitive and functional impairments associated with Alzheimer's disease.

One of the key hallmarks of Alzheimer's disease is the buildup of amyloid-beta protein in the brain. This protein forms plaques, which can damage neurons and disrupt communication between brain cells. Tau protein also accumulates in the brain, forming tangles that interfere with the normal functioning of neurons. The accumulation of these proteins causes inflammation and oxidative stress, which further damages neurons and leads to cognitive decline.
""", risk: "The exact cause of Alzheimer's disease is not fully understood, but research suggests that it is likely caused by a combination of genetic, environmental, and lifestyle factors. A number of genetic mutations have been identified that are associated with an increased risk of Alzheimer's disease, including mutations in the genes that produce amyloid-beta and tau proteins. Environmental factors such as exposure to toxins, head injuries, and chronic stress have also been linked to an increased risk of Alzheimer's disease.", impact: """
Alzheimer's disease can have a significant impact on a patient's quality of life. As the disease progresses, patients may experience a range of symptoms, including memory loss, confusion, difficulty with language, problems with spatial awareness, and changes in mood and behavior. These symptoms can make it difficult to perform daily activities and can lead to social isolation, depression, and anxiety.

In addition to the cognitive and behavioral symptoms, Alzheimer's disease can also cause physical symptoms such as difficulty walking, loss of appetite, and weight loss. Patients with Alzheimer's disease are also at an increased risk of developing other conditions such as infections, falls, and injuries.
""", complications: "As the disease progresses, patients may experience a range of complications that can impact their overall health and quality of life. These complications include an increased risk of infections such as pneumonia and urinary tract infections, falls and injuries due to difficulties with balance and coordination, malnutrition and dehydration from difficulty with eating and drinking, behavioral and psychological symptoms such as agitation, aggression, and depression, and an increased risk of developing other medical conditions such as heart disease, stroke, and diabetes.")

var Ischemia : SecondaryModel = SecondaryModel(title: "Ischemia", text: """
Cardiac ischemia is a condition that affects the biology of the heart. The heart muscle, or myocardium, relies on a constant supply of oxygen and nutrients from the blood to function properly. When the blood flow to the heart is reduced, the heart muscle cells may not receive enough oxygen and nutrients, leading to a cascade of biological events that can result in damage or death of the cells.

The lack of oxygen and nutrients in the heart muscle cells triggers a series of biological responses. Initially, the cells switch from aerobic metabolism, which requires oxygen, to anaerobic metabolism, which does not require oxygen but produces less energy. This switch leads to the buildup of metabolic waste products, such as lactic acid, which can cause pain and discomfort.

As the ischemia persists, the heart muscle cells become starved of energy and nutrients, leading to cellular dysfunction and damage. The damaged cells release enzymes and other substances into the bloodstream, which can trigger inflammation and further damage to the heart tissue.

In severe cases, the lack of oxygen and nutrients can lead to cell death, or necrosis, which can cause permanent damage to the heart tissue and impair the heart's function. Necrosis can also trigger an inflammatory response, which can exacerbate the damage and contribute to the formation of scar tissue.
""", risk: "The main cause of reduced blood flow to the heart is atherosclerosis, which is the buildup of plaques composed of cholesterol, fatty substances, and inflammatory cells on the inner walls of the coronary arteries. These plaques can narrow the arteries and limit blood flow to the heart. In addition to reducing blood flow, the plaques can also rupture or break open, leading to the formation of blood clots that can further block the arteries and exacerbate the ischemia.", impact: "Ischemia can have a significant impact on a patient's quality of life. Patients with ischemic heart disease may experience chest pain, shortness of breath, and fatigue, which can limit their ability to perform daily activities. Patients with ischemic stroke may experience paralysis, difficulty speaking, and cognitive impairment, which can affect their ability to communicate and perform daily activities. Patients with peripheral artery disease may experience pain, numbness, and tingling in their legs, which can make it difficult to walk and perform other activities.", complications: "Complications can include tissue damage, organ failure, chronic pain, infections, blood clots, and psychological impacts.In severe cases, ischemia can cause tissue damage in the affected area due to a lack of oxygen and nutrients, leading to cell death and organ dysfunction. This can result in chronic pain, disability, and decreased quality of life for patients. Ischemia can also increase the risk of infections in the affected area, which can lead to further complications such as gangrene and amputation of the affected limb.")
