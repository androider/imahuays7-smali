.class Lanet/channel/strategy/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lanet/channel/strategy/utils/SerialLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanet/channel/strategy/utils/SerialLruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient b:Lanet/channel/strategy/j;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    .line 22
    iput-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/j;

    .line 25
    invoke-virtual {p0}, Lanet/channel/strategy/g;->a()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lanet/channel/strategy/utils/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 94
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 97
    iget-object v3, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    const-string v4, "No_Result"

    invoke-virtual {v3, p1, v4}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 102
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/j;

    invoke-virtual {v0}, Lanet/channel/strategy/j;->d()Lanet/channel/strategy/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lanet/channel/strategy/l;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "No_Result"

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v2

    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 99
    monitor-exit v0

    throw p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method a()V
    .locals 2

    .line 33
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    :cond_0
    return-void
.end method

.method a(Lanet/channel/strategy/j;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/j;

    return-void
.end method

.method a(Lanet/channel/strategy/y$c;)V
    .locals 8

    .line 39
    iget-object v0, p1, Lanet/channel/strategy/y$c;->c:[Lanet/channel/strategy/y$b;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    .line 46
    :goto_0
    :try_start_0
    iget-object v5, p1, Lanet/channel/strategy/y$c;->c:[Lanet/channel/strategy/y$b;

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 47
    iget-object v5, p1, Lanet/channel/strategy/y$c;->c:[Lanet/channel/strategy/y$b;

    aget-object v5, v5, v3

    .line 48
    iget-boolean v6, v5, Lanet/channel/strategy/y$b;->h:Z

    if-eqz v6, :cond_1

    .line 49
    iget-object v6, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v5, v5, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lanet/channel/strategy/utils/SerialLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_1
    iget-boolean v6, v5, Lanet/channel/strategy/y$b;->j:Z

    if-eqz v6, :cond_2

    goto :goto_1

    .line 56
    :cond_2
    iget-object v6, v5, Lanet/channel/strategy/y$b;->d:Ljava/lang/String;

    if-eqz v6, :cond_4

    if-nez v4, :cond_3

    .line 58
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 60
    :cond_3
    iget-object v6, v5, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lanet/channel/strategy/y$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v6, "http"

    .line 64
    iget-object v7, v5, Lanet/channel/strategy/y$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "https"

    iget-object v7, v5, Lanet/channel/strategy/y$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 66
    iget-object v6, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v5, v5, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    const-string v7, "No_Result"

    invoke-virtual {v6, v5, v7}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68
    :cond_5
    iget-object v6, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v7, v5, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lanet/channel/strategy/y$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_8

    .line 73
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 75
    iget-object v5, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v5, v4}, Lanet/channel/strategy/utils/SerialLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 76
    iget-object v5, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v6, v4}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 78
    :cond_7
    iget-object v4, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "No_Result"

    invoke-virtual {v4, v3, v5}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 82
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 83
    invoke-static {p1}, Lanet/channel/h/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "awcn.SafeAislesMap"

    .line 84
    invoke-virtual {p0}, Lanet/channel/strategy/g;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 82
    monitor-exit v0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v0

    .line 117
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SafeAislesMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v2}, Lanet/channel/strategy/utils/SerialLruCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0

    throw v1
.end method
