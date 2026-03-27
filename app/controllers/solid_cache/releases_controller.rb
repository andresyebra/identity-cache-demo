module SolidCache
  class ReleasesController < ApplicationController
    before_action :set_release, only: :show

    # GET /solid_cache/releases
    def index
      start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)

      @releases = Rails.cache.fetch("solid_cache/releases/all", expires_in: 5.minutes) {
        ::Release.all.to_a
      }

      @elapsed_ms = ((Process.clock_gettime(Process::CLOCK_MONOTONIC) - start_time) * 1000).round(2)
      @cache_type = "Solid Cache (SQLite)"
    end

    # GET /solid_cache/releases/:id
    def show
      @cache_type = "Solid Cache (SQLite)"
    end

    private

    def set_release
      start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      @release = Rails.cache.fetch("solid_cache/releases/#{params[:id]}", expires_in: 5.minutes) {
        ::Release.find(params[:id])
      }
      @elapsed_ms = ((Process.clock_gettime(Process::CLOCK_MONOTONIC) - start_time) * 1000).round(2)
    end
  end
end
