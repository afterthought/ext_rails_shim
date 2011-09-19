Ext.define 'Rails.data.proxy.Rest',
  extend: 'Ext.data.proxy.Rest'
  requires: [ 'Ext.util.Inflector' ]
  alias: 'proxy.railsrest'

  constructor: (config) ->
    baseName = config.model.getName().split('.').pop().toLowerCase()
    rootName = Ext.util.Inflector.pluralize(baseName)
    recordName = baseName
    url = Ext.util.Inflector.pluralize(baseName)
    token = Ext.select('meta[name=csrf-token]')?.item(0)?.getAttribute('content')

    config ?= {}
    Ext.applyIf config,
      appendId: true
      format: 'json'
      headers:
        'X-CSRF-Token': token
      url: url
      reader:
        root: rootName
      writer:
        record: recordName
        allowSingle: true

    @callParent([config])
