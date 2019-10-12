const {g_of_n, h_of} = require('./solution')

describe('problem672', () => {
  test('g_of_n works', () => {
    expect(g_of_n(125)).toBe(8)
    expect(g_of_n(1000)).toBe(9)
    expect(g_of_n(10000)).toBe(21)
  })

  test('h_of(K) works', () => {
    expect(h_of(10)).toBe(690409338 )
  })
})











