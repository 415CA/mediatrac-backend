class MovieSerializer < ActiveModel::Serializer
  attributes :id, :favorites, :futures, :watches, :tmdb_id, :original_title, :overview, :poster_path, :release_date, :runtime, :tagline, :genre
end
