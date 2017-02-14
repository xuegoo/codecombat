RootView = require 'views/core/RootView'
SubscribeModal = require 'views/core/SubscribeModal'
template = require 'templates/premium-features-view'

module.exports = class PremiumFeaturesView extends RootView
  id: 'premium-features-view'
  template: template

  logoutRedirectURL: false

  events:
    'click #fixed-nav a': 'onClickFixedNavLink'
    'click .screen-thumbnail': 'onClickScreenThumbnail'
    'click .buy': 'onClickBuy'

  shortcuts:
    'esc': 'onEscapePressed'

  #getTitle: -> return $.i18n.t('nav.about')

   
  onClickBuy: ->
    @openModalView new SubscribeModal()


  onEscapePressed: (event) ->
    if $('#screenshot-lightbox').data('bs.modal')?.isShown
      event.preventDefault()
      $('#screenshot-lightbox').modal('hide')

  onClickScreenThumbnail: (event) ->
    unless $('#screenshot-lightbox').data('bs.modal')?.isShown
      event.preventDefault()
      # Modal opening happens automatically from bootstrap
      $('#screenshot-carousel').carousel($(event.currentTarget).data("index"))
