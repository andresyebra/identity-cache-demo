IdentityCache.cache_backend = ActiveSupport::Cache::MemCacheStore.new(
  ENV.fetch("MEMCACHED_URL", "localhost:11211")
)
