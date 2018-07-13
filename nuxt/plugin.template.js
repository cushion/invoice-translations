export default (context, inject) => {
  inject('i18n', <%= JSON.stringify(options.i18n) %>)
}