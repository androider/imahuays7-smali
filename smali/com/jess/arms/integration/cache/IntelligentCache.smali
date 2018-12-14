.class public Lcom/jess/arms/integration/cache/IntelligentCache;
.super Ljava/lang/Object;
.source "IntelligentCache.java"

# interfaces
.implements Lcom/jess/arms/integration/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jess/arms/integration/cache/Cache<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final KEY_KEEP:Ljava/lang/String; = "Keep="


# instance fields
.field private final mCache:Lcom/jess/arms/integration/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/jess/arms/integration/cache/LruCache;

    invoke-direct {v0, p1}, Lcom/jess/arms/integration/cache/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-interface {v0}, Lcom/jess/arms/integration/cache/Cache;->clear()V

    .line 148
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jess/arms/integration/cache/IntelligentCache;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized containsKey(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "Keep="

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-interface {v0, p1}, Lcom/jess/arms/integration/cache/Cache;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jess/arms/integration/cache/IntelligentCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Keep="

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-interface {v0, p1}, Lcom/jess/arms/integration/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMaxSize()I
    .locals 2

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-interface {v1}, Lcom/jess/arms/integration/cache/Cache;->getMaxSize()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-interface {v0}, Lcom/jess/arms/integration/cache/Cache;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 136
    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/integration/cache/IntelligentCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Keep="

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 98
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-interface {v0, p1, p2}, Lcom/jess/arms/integration/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jess/arms/integration/cache/IntelligentCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Keep="

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-interface {v0, p1}, Lcom/jess/arms/integration/cache/Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jess/arms/integration/cache/IntelligentCache;->mCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-interface {v1}, Lcom/jess/arms/integration/cache/Cache;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
