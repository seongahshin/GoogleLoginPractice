//
//  ViewController.swift
//  GoogleLoginPractice
//
//  Created by 신승아 on 2023/02/03.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn
import FirebaseFirestore

class ViewController: UIViewController {
    
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func google(_ sender: UIButton) {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { [unowned self] userInfo, error in

          if let error = error {
              
            // ...
            return
          }

          guard
            let accessToken = userInfo?.user.accessToken,
            let idToken = userInfo?.user.idToken
            else {
            return
          }

          let credential = GoogleAuthProvider.credential(withIDToken: "\(idToken)",
                                                         accessToken: "\(accessToken)")
            print(credential)

          // ...
        }
    }
    @IBAction func Store(_ sender: Any) {
        // Add a new document with a generated ID
        
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "first": "Ada",
            "last": "Lovelace",
            "born": 1815
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
        
        db.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
    
    
    

}

