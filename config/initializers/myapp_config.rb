require "#{Rails.root}/lib/core/all_changes.rb"
#require 'i18n/missing_translations'
#Omei::Application.config.app_middleware.use(I18n::MissingTranslations) if Rails.env.development?
#
module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {})
      options[:renderer] ||= BootstrapLinkRenderer
      super.try :html_safe
    end

    class BootstrapLinkRenderer < LinkRenderer
      protected
      
      def html_container(html)
        tag :ul, html, container_attributes
      end

      def page_number(page)
        tag :li, link(page, page, :rel => rel_value(page)), :class => ('active' if page == current_page)
      end

      def previous_or_next_page(page, text, classname)
        tag :li, link(text, page || '#'), :class => [classname[0..3], classname, ('disabled' unless page)].join(' ')
      end
    end
  end
end

WillPaginate::ViewHelpers.pagination_options[:class] = 'pagination'
WillPaginate::ViewHelpers.pagination_options[:previous_label] = '&laquo;'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '&raquo;'

