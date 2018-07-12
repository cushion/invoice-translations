const yaml = require('js-yaml')
const fs = require('fs')
const path = require('path')

const files = fs.readdirSync(path.join(__dirname, 'i18n'))
const i18n = files.reduce((i18n, filename) => {
  const file = fs.readFileSync(path.join(__dirname, 'i18n', filename))
  const key = filename.replace('.yml', '')

  i18n[key] = yaml.safeLoad(file, 'utf8').invoice

  return i18n
}, {})

export const i18n