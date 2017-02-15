RootView = require 'views/core/RootView'
SubscribeModal = require 'views/core/SubscribeModal'
template = require 'templates/premium-features-view'

module.exports = class PremiumFeaturesView extends RootView
  id: 'premium-features-view'
  template: template

  i18nData:
    heroesCount: '12'
    levelsCount: '330'

  events:
    'click .buy': 'onClickBuy'

  onClickBuy: ->
    @openModalView new SubscribeModal()
