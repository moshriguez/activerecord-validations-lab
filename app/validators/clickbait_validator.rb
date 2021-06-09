class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record.title != nil
            unless record.title.match?(/Won't\sBelieve/ || /Secret/ || /Top\s\d/ || /Guess/)
                record.errors[:title] << "This is not Clickbait!"
            end
        end
    end
end