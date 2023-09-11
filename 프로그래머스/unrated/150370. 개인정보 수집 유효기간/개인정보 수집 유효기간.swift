import Foundation

struct Term {
    let term: String
    let period: Int
}

struct NewDate {
    var year: Int
    var month: Int {
        didSet {
            if month > 12 {
                year += 1
                month = month - 12
            } else if month < 1 {
                year -= 1
                month = month + 12
            }
        }
    }
    var day: Int {
        didSet {
            if day > 28 {
                month += 1
                day = day - 28
            } else if day < 1 {
                month -= 1
                day = day + 28
            }
        }
    }
    
    var onlyDay: Int {
        return (year * 12 * 28) + (month * 28) + day
    }

    init(year: String, month: String, day: String) {
        self.year = Int(year)!
        self.month = Int(month)!
        self.day = Int(day)!
    }

    init(date: String) {
        let date = date.split(separator: ".")
        self.year = Int(date[0])!
        self.month = Int(date[1])!
        self.day = Int(date[2])!
    }

    mutating func addMonth(_ month: Int) -> NewDate {
        var date = self
        date.month += month
        return date
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
            let date = privacyDate.addMonth(term.period)

            guard date.onlyDay <= nowDate.onlyDay else { return }
            result.append(i + 1)
        }
    }

    return result
}