//
//  ViewController.swift
//  sqlitepratiksir
//
//  Created by Mac on 14/10/22.
//

import UIKit
import SQLite3

class ViewController: UIViewController {
    

    @IBOutlet private weak var idTF: UITextField!
    
    @IBOutlet weak private var nameTF: UITextField!
    
    @IBOutlet weak private var phoneTF: UITextField!
    
    //MARK: Variable
    private var dbDetails: OpaquePointer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = "abcd"
        str.last
        print(str)
        //Step2 : Unsterstand how to get for documents dirctory
        do{
            
       // } catch let myError {
          //  print("Error is: \(myError.localizedDescription)")
        
    let documentDirectoryURL =  try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            
            
            let dbpathURL = documentDirectoryURL?.appendingPathComponent("bitcode.sqlite")
            
            let dbPathString = dbpathURL?.absoluteString
            print("DB should be created at: \(dbPathString)")
            
            // Step3: Create/Open an sqlite database in document directory
            var dbDetails: OpaquePointer?
          if  sqlite3_open(dbPathString, &dbDetails) == SQLITE_OK {
                self.dbDetails = dbDetails
            } else {
                print("DB cannot be opend")
            }
    } catch let myError {
        print("Error is: \(myError.localizedDescription)")
    }
    
    // Step4: Create table("with all the required coloumns and its date types")in DB to store data - create table query
        
        var createTableOpaquePoniter: OpaquePointer?
        let  createTableQuery = "CREATE TABLE Student(ID INT,NAME TEXT,PhoneNumber TEXT)"
    
       if sqlite3_prepare_v2(self.dbDetails, createTableQuery, -1, &createTableOpaquePoniter, nil) == SQLITE_OK {
        
      if   sqlite3_step(createTableOpaquePoniter)  == SQLITE_DONE {
            print("Create table Query executed succesfully")
        
      } else {
           print("Create table query not prepared")
      }
        }
    
}
    //MARK : Button Actions
  
    
    @IBAction func saveDataButtonAction() {
    }
    
  
    @IBAction  private func readDataButtonAction() {
    }
    
    
    //MARK: Database MEthods
    
    private func fetchDocumentDirectoryPath() ->  URL? {
        do{
            
        
        let documentDirectoryURL =  try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
          
        return documentDirectoryURL
        } catch {
            print("Error is: \(error.localizedDescription)")
            return nil
        }
    }
        private func fetchDBPath() -> String? {
            guard let ddPath = fetchDocumentDirectoryPath() else {
                return nil
            }
            let dbPath = ddPath.appendingPathComponent("bitcode.sqlite")
            print("DB should be created at: \(dbPath.absoluteString) ")
            return ddPath.absoluteString
        }
    
    private func createAndOpenDB() -> OpaquePointer? {
        let dbPath = fetchDBPath()
        var dbDetails: OpaquePointer?
      if  sqlite3_open(dbPath, &dbDetails) == SQLITE_OK {
            return dbDetails
      } else {
          print("DB is  cannot be opened ")
        return nil
      }
    
    }
    
    private func  createTableInDB(name: String) {
        
   }


}
