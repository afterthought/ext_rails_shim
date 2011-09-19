Ext.define 'Rails.data.Store',
  extend: 'Ext.data.Store'
  requires: [ 'Rails.data.proxy.Rest' ]
  constructor: (config) ->
    config ?= {}
    Ext.applyIf config,
      remoteSort: true
      proxy:
        type: 'railsrest'

    @callParent [config]
