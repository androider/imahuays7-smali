.class public final Lio/rx_cache2/internal/cache/k;
.super Lio/rx_cache2/internal/cache/a;
.source "RetrieveRecord.java"


# instance fields
.field private final c:Lio/rx_cache2/internal/cache/f;

.field private final d:Lio/rx_cache2/internal/cache/i;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;Lio/rx_cache2/internal/cache/f;Lio/rx_cache2/internal/cache/i;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/cache/a;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;)V

    .line 34
    iput-object p3, p0, Lio/rx_cache2/internal/cache/k;->c:Lio/rx_cache2/internal/cache/f;

    .line 35
    iput-object p4, p0, Lio/rx_cache2/internal/cache/k;->d:Lio/rx_cache2/internal/cache/i;

    .line 36
    iput-object p5, p0, Lio/rx_cache2/internal/cache/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Z)Lio/rx_cache2/internal/Record;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Long;",
            "Z)",
            "Lio/rx_cache2/internal/Record<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lio/rx_cache2/internal/cache/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lio/rx_cache2/internal/cache/k;->a:Lio/rx_cache2/internal/d;

    invoke-interface {v1, v0}, Lio/rx_cache2/internal/d;->a(Ljava/lang/String;)Lio/rx_cache2/internal/Record;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 46
    sget-object p6, Lio/rx_cache2/Source;->MEMORY:Lio/rx_cache2/Source;

    invoke-virtual {v1, p6}, Lio/rx_cache2/internal/Record;->setSource(Lio/rx_cache2/Source;)V

    goto :goto_0

    .line 49
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/rx_cache2/internal/cache/k;->b:Lio/rx_cache2/internal/e;

    iget-object v3, p0, Lio/rx_cache2/internal/cache/k;->e:Ljava/lang/String;

    invoke-interface {v1, v0, p6, v3}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;ZLjava/lang/String;)Lio/rx_cache2/internal/Record;

    move-result-object v1

    .line 50
    sget-object p6, Lio/rx_cache2/Source;->PERSISTENCE:Lio/rx_cache2/Source;

    invoke-virtual {v1, p6}, Lio/rx_cache2/internal/Record;->setSource(Lio/rx_cache2/Source;)V

    .line 51
    iget-object p6, p0, Lio/rx_cache2/internal/cache/k;->a:Lio/rx_cache2/internal/d;

    invoke-interface {p6, v0, v1}, Lio/rx_cache2/internal/d;->a(Ljava/lang/String;Lio/rx_cache2/internal/Record;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    invoke-virtual {v1, p5}, Lio/rx_cache2/internal/Record;->setLifeTime(Ljava/lang/Long;)V

    .line 59
    iget-object p5, p0, Lio/rx_cache2/internal/cache/k;->d:Lio/rx_cache2/internal/cache/i;

    invoke-virtual {p5, v1}, Lio/rx_cache2/internal/cache/i;->a(Lio/rx_cache2/internal/Record;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 60
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    .line 61
    iget-object p5, p0, Lio/rx_cache2/internal/cache/k;->c:Lio/rx_cache2/internal/cache/f;

    invoke-virtual {p5, p1, p2, p3}, Lio/rx_cache2/internal/cache/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 64
    iget-object p3, p0, Lio/rx_cache2/internal/cache/k;->c:Lio/rx_cache2/internal/cache/f;

    invoke-virtual {p3, p1, p2}, Lio/rx_cache2/internal/cache/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object p2, p0, Lio/rx_cache2/internal/cache/k;->c:Lio/rx_cache2/internal/cache/f;

    invoke-virtual {p2, p1}, Lio/rx_cache2/internal/cache/f;->b(Ljava/lang/String;)V

    :goto_1
    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    return-object v1

    :cond_4
    return-object v1

    :catch_0
    return-object v2
.end method
