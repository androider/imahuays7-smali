.class public final Lio/rx_cache2/internal/cache/f;
.super Lio/rx_cache2/internal/cache/a;
.source "EvictRecord.java"


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/cache/a;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 66
    iget-object v0, p0, Lio/rx_cache2/internal/cache/f;->a:Lio/rx_cache2/internal/d;

    invoke-interface {v0}, Lio/rx_cache2/internal/d;->b()V

    .line 67
    iget-object v0, p0, Lio/rx_cache2/internal/cache/f;->b:Lio/rx_cache2/internal/e;

    invoke-interface {v0}, Lio/rx_cache2/internal/e;->c()V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lio/rx_cache2/internal/cache/f;->a:Lio/rx_cache2/internal/d;

    invoke-interface {v1, v0}, Lio/rx_cache2/internal/d;->b(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lio/rx_cache2/internal/cache/f;->b:Lio/rx_cache2/internal/e;

    invoke-interface {v1, v0}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-virtual {p0, p1, p2}, Lio/rx_cache2/internal/cache/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lio/rx_cache2/internal/cache/f;->a:Lio/rx_cache2/internal/d;

    invoke-interface {v0, p2}, Lio/rx_cache2/internal/d;->b(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lio/rx_cache2/internal/cache/f;->b:Lio/rx_cache2/internal/e;

    invoke-interface {v0, p2}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lio/rx_cache2/internal/cache/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lio/rx_cache2/internal/cache/f;->a:Lio/rx_cache2/internal/d;

    invoke-interface {p2, p1}, Lio/rx_cache2/internal/d;->b(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lio/rx_cache2/internal/cache/f;->b:Lio/rx_cache2/internal/e;

    invoke-interface {p2, p1}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;)V

    return-void
.end method
