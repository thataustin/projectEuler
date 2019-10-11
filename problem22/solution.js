const fs = require('fs')
const path = require('path')

const _ = require('underscore')
const file = fs.readFileSync(path.join(__dirname, './p022_names.txt'), 'utf8');
const sortedArrayOfNames = _.sortBy(file.replace(/"/g, '').split(','))
const alphabetScoreMap = _.invert('ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split(''))

const scoreForAllNames = _.reduce(sortedArrayOfNames, (memo, name) => {
  return memo + getScoreForName(name)
}, 0)

console.log('scoreForAllNames', scoreForAllNames)

function getScoreForName(name) {
  return getPositionInList(name) * addUpLetterScoresInName(name)
}

function getScoreForLetter(letter) {
  return parseInt(alphabetScoreMap[letter]) + 1
}

function addUpLetterScoresInName(name) {
  return _.reduce(name.split(''), (memo, letter) => {
    return memo + getScoreForLetter(letter)
  }, 0)
}

function getPositionInList(name) {
  const invertedArray = _.invert(sortedArrayOfNames)
  return parseInt(invertedArray[name]) + 1
}

module.exports = {
  getScoreForLetter,
  addUpLetterScoresInName,
  getPositionInList,
  getScoreForName
}