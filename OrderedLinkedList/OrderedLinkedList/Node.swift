import Foundation

class Node<T: Comparable>{
    var data:T
    var nextLink:Node<T>?
    
    init(data : T) {
        self.data = data
    }
}
