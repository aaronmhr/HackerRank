import Foundation

func braces(values: [String]) -> [String] {
    var clean: [String] = []
    values.forEach { value in
        var lastExpressionSize = value.count
        var newExpression = removeBalancedStrings(array: value)
        
        while newExpression.count < lastExpressionSize {
            lastExpressionSize = newExpression.count
            newExpression = removeBalancedStrings(array: newExpression)
        }
        clean.append(newExpression.isEmpty ? "YES" : "NO")
    }
    return clean
}

private func removeBalancedStrings(array: String) -> String {
    return array.replacingOccurrences(of: "{}", with: "")
        .replacingOccurrences(of: "[]", with: "")
        .replacingOccurrences(of: "()", with: "")
}

braces(values: ["{[()]}"])
