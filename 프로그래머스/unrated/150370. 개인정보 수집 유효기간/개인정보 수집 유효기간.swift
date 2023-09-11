import Foundation

struct Term {
    let term: String
    let period: Int
}

struct NewDate {
    var day: Int

    init(year: Int, month: Int, day: Int) {
        self.day = (year * 12 * 28) + (month * 28) + day
    }

    init(date: String) {
        let date = date.split(separator: ".")
        let year = Int(date[0])!
        let month = Int(date[1])!
        let day = Int(date[2])!
        self.day = (year * 12 * 28) + (month * 28) + day
    }

    mutating func addMonth(_ month: Int) {
        self.day += month * 28
    }
}

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result = [Int]()

    let nowDate = NewDate(date: today)

    //MARK: 인스턴스화
    let terms: [Term] = terms.map {
        let terms = $0.split(separator: " ")
        return Term(
            term: String(terms[0]),
            period: Int(terms[1])!
        )
    }

    // MARK: 약관일자를 확인해서 result에 추가
    for i in 0..<privacies.count {
        print(i + 1)
        var privacy = privacies[i].split(separator: " ")

        var privacyDate = NewDate(date: String(privacy[0]))
        var privacyTerm = privacy[1]

        terms.forEach { term in
            guard term.term == privacyTerm else { return }
            var date = privacyDate
            date.addMonth(term.period)

            guard date.day <= nowDate.day else { return }
            result.append(i + 1)
        }
    }

    return result
}