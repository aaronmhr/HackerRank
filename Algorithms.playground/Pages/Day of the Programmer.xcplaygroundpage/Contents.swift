//https://www.hackerrank.com/challenges/day-of-the-programmer
import Foundation

func dayOfProgrammer(year: Int) -> String {
    if year < 1918 {
        return handleJulian(for: year)
    } else if year == 1918 {
        return "26.09.1918"
    } else {
        return handleGregorian(for: year)
    }
}

private func handleJulian(for year: Int) -> String {
    if year.isMultiple(of: 4) {
        return "12.09.\(year)"
    } else {
        return "13.09.\(year)"
    }
}

private func handleGregorian(for year: Int) -> String {
    if year.isMultiple(of: 400) || (year.isMultiple(of: 4) && !year.isMultiple(of: 100)) {
        return "12.09.\(year)"
    } else {
        return "13.09.\(year)"
    }
}
