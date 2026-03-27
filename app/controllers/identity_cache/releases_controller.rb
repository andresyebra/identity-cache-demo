module IdentityCache
  class ReleasesController < ApplicationController
    before_action :set_release, only: :show

    # GET /identity_cache/releases
    def index
      cache_key = "identity_cache/releases/all"
      start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)

      @releases = ::Release.fetch_by_genre(params[:genre]) if params[:genre].present?
      @releases ||= ::Release.all.to_a

      @elapsed_ms = ((Process.clock_gettime(Process::CLOCK_MONOTONIC) - start_time) * 1000).round(2)
      @cache_type = "IdentityCache (Memcached)"
    end

    # GET /identity_cache/releases/:id
    def show
      @cache_type = "IdentityCache (Memcached)"
    end

    private

    def set_release
      start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      @release = ::Release.fetch(params[:id])
      @elapsed_ms = ((Process.clock_gettime(Process::CLOCK_MONOTONIC) - start_time) * 1000).round(2)
    end
  end
end
