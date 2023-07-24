import Foundation
class TTT{
    var xos:[XO] = []
    var wCom = [[0,3,6],[1,4,7],[2,5,8],[0,1,2],[3,4,5],[6,7,8],[0,4,8],[6,4,2]]
    var iUp = 0
    var AIGame = false
    
    init() {
        for _ in 0...8{
            let xo1 = XO()
            xos.append(xo1)
        }
    }
    
    func BUp(at index:Int){
        iUp += 1
        if iUp%2 == 0{
            xos[index].xo = "⭕️"
        }
        else{
            xos[index].xo = "❌"
        }
        xos[index].iFU = true
        if AIGame && iUp<9 {
            var indexAI = Int.random(in: 0...8)
            while xos[indexAI].iFU {
                indexAI = Int.random(in: 0...8)
            }
            iUp += 1
            if iUp%2 == 0{
                xos[indexAI].xo = "⭕️"
            }
            else{
                xos[indexAI].xo = "❌"
            }
            xos[indexAI].iFU = true
        }
    }
    func WinC() -> String? {
        for i in wCom {
            if xos[i[0]].xo == xos[i[1]].xo && xos[i[1]].xo == xos[i[2]].xo && xos[i[0]].iFU {
                return xos[i[0]].xo
            }
            if iUp == 9{
                return "Ничья"
            }
        }
        return nil
    }
    func reset(){
        for i in xos.indices {
            xos[i].xo = nil
            xos[i].iFU = false
        }
        iUp = 0
    }
}

