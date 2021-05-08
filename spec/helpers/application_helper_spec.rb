require 'spec_helper'

describe ApplicationHelper do
  include ApplicationHelper

  context 'styled_widget_id' do
    it 'displays the proper id' do
      rendered_component = styled_widget_id("1.23")

      expect(rendered_component.html_safe?).to be_truthy
    end
  end
end