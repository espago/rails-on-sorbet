
module Rails
  module Dom
    module Testing
      module Assertions
        module DomAssertions; end
        module SelectorAssertions; end
      end
    end
  end
end

module ActiveRecord
  module ConnectionAdapters
    module DatabaseStatements; end
    module SchemaStatements; end
  end
end

module ActiveJob
  module Exceptions
    JITTER_DEFAULT = T.unsafe(nil)
  end
end

module ActionMailer
  class Collector; end
end
