const solution = require('./solution')
const {
  getScoreForLetter,
  addUpLetterScoresInName,
  getPositionInList,
  getScoreForName
} = solution

describe('problem 22', () => {

  test('getScoreForLetter works', () => {
    expect(getScoreForLetter('A')).toBe(1)
    expect(getScoreForLetter('Z')).toBe(26)
  })

  test('addUpLetterScoresInName works', () => {
    expect(addUpLetterScoresInName('COLIN')).toBe(53)
  })

  test('getPositionInList', () => {
    expect(getPositionInList('COLIN')).toBe(938)
  })

  test('getScoreForName', () => {
    expect(getScoreForName('COLIN')).toBe(49714)
  })
})