class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title
          titles = ["Won't Believe", "Secret", "Top[number]", "Guess"]
          if titles.detect {|t| record.title.include?(t) }.nil?
            record.errors[:title] << "Must contain clickbait"
          end
        end
      end
end