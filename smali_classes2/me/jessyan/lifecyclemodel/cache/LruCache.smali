.class public Lme/jessyan/lifecyclemodel/cache/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lme/jessyan/lifecyclemodel/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lme/jessyan/lifecyclemodel/cache/Cache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private final initialMaxSize:I

.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->cache:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    .line 48
    iput p1, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->initialMaxSize:I

    .line 49
    iput p1, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->maxSize:I

    return-void
.end method

.method private evict()V
    .locals 1

    .line 209
    iget v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->maxSize:I

    invoke-virtual {p0, v0}, Lme/jessyan/lifecyclemodel/cache/LruCache;->trimToSize(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lme/jessyan/lifecyclemodel/cache/LruCache;->trimToSize(I)V

    return-void
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getItemSize(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized getMaxSize()I
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-virtual {p0, p2}, Lme/jessyan/lifecyclemodel/cache/LruCache;->getItemSize(Ljava/lang/Object;)I

    move-result v0

    .line 147
    iget v1, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->maxSize:I

    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, p1, p2}, Lme/jessyan/lifecyclemodel/cache/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 149
    monitor-exit p0

    return-object p1

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 154
    iget v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    invoke-virtual {p0, p2}, Lme/jessyan/lifecyclemodel/cache/LruCache;->getItemSize(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    :cond_1
    if-eqz p1, :cond_2

    .line 157
    iget p2, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    invoke-virtual {p0, p1}, Lme/jessyan/lifecyclemodel/cache/LruCache;->getItemSize(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    .line 159
    :cond_2
    invoke-direct {p0}, Lme/jessyan/lifecyclemodel/cache/LruCache;->evict()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 145
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    iget v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    invoke-virtual {p0, p1}, Lme/jessyan/lifecyclemodel/cache/LruCache;->getItemSize(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 172
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSizeMultiplier(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 60
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiplier must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 62
    :cond_0
    iget v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->initialMaxSize:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->maxSize:I

    .line 63
    invoke-direct {p0}, Lme/jessyan/lifecyclemodel/cache/LruCache;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 58
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    iget v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized trimToSize(I)V
    .locals 4

    monitor-enter p0

    .line 195
    :goto_0
    :try_start_0
    iget v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    if-le v0, p1, :cond_0

    .line 196
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 198
    iget v2, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    invoke-virtual {p0, v1}, Lme/jessyan/lifecyclemodel/cache/LruCache;->getItemSize(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->currentSize:I

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lme/jessyan/lifecyclemodel/cache/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p0, v0, v1}, Lme/jessyan/lifecyclemodel/cache/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 194
    monitor-exit p0

    throw p1
.end method
