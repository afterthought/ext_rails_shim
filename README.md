# ExtRailsShim

## Note

Some planned features are missing (See below).

## Usage

1. Add `ext_rails_shim` gem line to your Gemfile.
2. Add `compass` gem line to your Gemfile in the development group.
3. Run `bundle` if necessary.
4. Run `bundle rake ext_rails_shim:install EXT4_DIR={path to inflated Ext.js archive}`
   This installs Ext.js's javascripts into vendor/assets/javascripts/ext4,
   theme images into vendor/assets/images/ext4 and
   theme stylesheets into vendor/assets/stylesheets/ext4 respectively.
   
   Stylesheets are recompiled so that image paths fit Rails asset path convention (/assets/).
5. Now you can use codes like
   `<%= stylesheet_include_tag 'ext4/ext-all' %>`
   or
   `<%= javascript_include_tag 'ext4/ext-all' %>`
   in your views.

### Handling Data from/to Rails

1. Define a model as a subclass of Ext.data.Model as usual.
2. Define a store as a subclass of Rails.data.Store, which communicates well with Rails controllers.

See the example application for detail.

## Coming Soon

* Ext.data friendly Rails controller.
* Removal of protected attributes on POST/PUT. (by sending `AR.protected_attributes.to_a`)
