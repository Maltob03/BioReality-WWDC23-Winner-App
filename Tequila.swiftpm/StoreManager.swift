//
//  StoreManager.swift
//  BioReality
//
//  Created by Domenico Altobello on 28/05/23.
//

import Foundation
import StoreKit

class StoreManager: NSObject, ObservableObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    var request: SKProductsRequest!
    @Published var products: [SKProduct] = []
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    func startRequest(with identifiers: [String]) {
        let productIdentifiers = Set(identifiers)
        request = SKProductsRequest(productIdentifiers: productIdentifiers)
        request.delegate = self
        request.start()
    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        DispatchQueue.main.async {
            self.products = response.products
        }
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            switch transaction.transactionState {
            case .purchased:
                // Handle the purchase
                DispatchQueue.main.async {
                    self.showAlert = true
                    self.alertMessage = "Thank you for your donation ❤️"
                }
                SKPaymentQueue.default().finishTransaction(transaction)
            case .failed:
                // Handle the failure
                //                DispatchQueue.main.async {
                //                    self.showAlert = true
                //                    self.alertMessage = "Donation failed - Please try again."
                //                }
                print("Donation failed...")
                SKPaymentQueue.default().finishTransaction(transaction)
            default:
                break
            }
        }
    }
    
    func purchaseProduct(withIdentifier productIdentifier: String) {
        if let product = products.first(where: { $0.productIdentifier == productIdentifier }) {
            print(product)
            let payment = SKPayment(product: product)
            SKPaymentQueue.default().add(payment)
        }
    }
}
