module Alipay
  class Result < ::Hash
    SUCCESS_FLAG = 'T'.freeze

    def initialize(result)
      super

      if result['alipay'].class == Hash
        result['alipay'].each_pair do |k, v|
          self[k] = v
        end
      end
    end

    def success?
      self['is_success'] == SUCCESS_FLAG
    end
  end
end
