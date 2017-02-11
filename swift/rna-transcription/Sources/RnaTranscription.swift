struct Nucleotide {
    
    var sequence: String
    var compMap: [Character: Character] = ["G": "C", "C": "G", "T": "A", "A": "U"]
    
    var complementOfDNA: String {
        var result = ""
        for c in self.sequence.characters {
            result.append(compMap[c]!)
        }
        return result
    }
    
    init (_ seq: String) {
        sequence = seq
    }
    
}
