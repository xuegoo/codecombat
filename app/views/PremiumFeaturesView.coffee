RootView = require 'views/core/RootView'
SubscribeModal = require 'views/core/SubscribeModal'
template = require 'templates/premium-features-view'

module.exports = class PremiumFeaturesView extends RootView
  id: 'premium-features-view'
  template: template

  events:
    'click .buy': 'onClickBuy'

  onClickBuy: ->
    @openModalView new SubscribeModal()
