# IdentityCache uses its own cache backend, separate from Rails.cache (Solid Cache).
#
# In production you'd use MemCacheStore backed by Memcached:
#   IdentityCache.cache_backend = ActiveSupport::Cache::MemCacheStore.new("localhost:11211")
#
# For this demo we use MemoryStore so no external dependency is needed.
IdentityCache.cache_backend = ActiveSupport::Cache::MemoryStore.new
