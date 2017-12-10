module Decorators
  class Session < Draper::Decorator
    delegate_all

    def to_json
      return to_h.to_json
    end

    def to_h
      return {
        token: token,
        expiration: expiration,
        created_at: created_at.to_s,
        username: account.username
      }
    end

  end
end