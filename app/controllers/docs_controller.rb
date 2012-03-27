class DocsController < ApplicationController
  def ruby
		render :layout=>false
  end

  def java
		render :layout=>false
  end

  def python
		render :layout=>false
  end

  def php
		render :layout=>false
  end

  def javascript
		@location = 'Documentation'
		@javascript = 'active'
		render :layout=>false
	end

  def curl
		@location = 'Documentation'
		@curl = 'active'
		render :layout=>false
	end
end
