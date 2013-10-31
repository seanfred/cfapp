class ActiveSupport::TimeWithZone
    def as_json(options = {})
        strftime('%a %b %d %X %0Z %G')
    end
end
