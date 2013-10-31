class ActiveSupport::TimeWithZone
    def as_json(options = {})
        strftime('%b %e, %Y %l:%m%p')
    end
end
