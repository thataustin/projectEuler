const _ = require('underscore')

const _1Through1000 = _.range(1, 100001)
// _.each(_1Through1000, num => {
//   console.log(`${num},${g_of_n(num)}`)
// })

const _1Through10 = _.range(1, 11)
_.each(_1Through10, num => {
  console.log(`${num} => ${h_of(num)}`)
})


function g_of_n(currentValue, numberOfOnesSoFar = 0) {
  if (currentValue <= 1) return numberOfOnesSoFar
  if (currentValue % 7 != 0) return g_of_n(currentValue + 1, numberOfOnesSoFar + 1)
  return g_of_n(currentValue / 7, numberOfOnesSoFar)
}

function s_of(N) {
  return _.reduce(_.range(1, N + 1), (memo, num) => {
    return memo + g_of_n(num)
  }, 0)
}

function h_of(K) {
  return s_of(((7 ** K) - 1) / 11 )
}

module.exports = {
  g_of_n,
  h_of
}