module Sufia
  module Statistics
    class Collections < OverTime
      private

        def point(min, max)
          query = QueryService.new.build_date_query(min, max)
          Collection.where(query).count
        end
    end
  end
end
