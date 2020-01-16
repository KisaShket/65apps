import Alamofire
import Foundation

class Main{
    
    let network = Network()
    
    func start() {
        
        self.getRepos()
        let runLoop = RunLoop.current
        while runLoop.run(mode: .default, before: .distantFuture) { }
        
    }
    private func getRepos(){
        print("Введите никнейм гитхаб")
        var nickName:String? = nil
        repeat{
            nickName=readLine()
        }while nickName!.isEmpty
        network.getRepo(nickName: nickName!, completion:{ gitResponse in
            guard let gitResponce = gitResponse else {return}
            
            var repos = [String]()
            for repo in gitResponce{
                if let name = repo["name"] as? String{
                    repos.append(name)
                }
            }
            print(repos)
            self.getRepos()
        })
        
    }
   

}
let main = Main()
main.start()
