const yaml = require('js-yaml')
const fs = require('fs')
const path = require('path')

module.exports = function (moduleOptions) {
  const files = fs.readdirSync(path.join(__dirname, '..', 'i18n'))
  const i18n = files.reduce((i18n, filename) => {
    const file = fs.readFileSync(path.join(__dirname, '..', 'i18n', filename))
    const key = filename.replace('.yml', '')

    i18n[key] = yaml.safeLoad(file, 'utf8').invoice

    return i18n
  }, {})

  this.addPlugin({
    src: './plugin.template.js',
    fileName: 'invoice_translations.js',
    options: {
      i18n,
    }
  })
}

module.exports.meta = require('../package.json')