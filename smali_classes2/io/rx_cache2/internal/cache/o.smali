.class public final Lio/rx_cache2/internal/cache/o;
.super Ljava/lang/Object;
.source "TwoLayersCache.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final a:Lio/rx_cache2/internal/cache/f;

.field private final b:Lio/rx_cache2/internal/cache/k;

.field private final c:Lio/rx_cache2/internal/cache/m;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/cache/f;Lio/rx_cache2/internal/cache/k;Lio/rx_cache2/internal/cache/m;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/rx_cache2/internal/cache/o;->a:Lio/rx_cache2/internal/cache/f;

    .line 33
    iput-object p2, p0, Lio/rx_cache2/internal/cache/o;->b:Lio/rx_cache2/internal/cache/k;

    .line 34
    iput-object p3, p0, Lio/rx_cache2/internal/cache/o;->c:Lio/rx_cache2/internal/cache/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Z)Lio/rx_cache2/internal/Record;
    .locals 7
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

    .line 39
    iget-object v0, p0, Lio/rx_cache2/internal/cache/o;->b:Lio/rx_cache2/internal/cache/k;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/rx_cache2/internal/cache/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Z)Lio/rx_cache2/internal/Record;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 62
    iget-object v0, p0, Lio/rx_cache2/internal/cache/o;->a:Lio/rx_cache2/internal/cache/f;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/f;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/rx_cache2/internal/cache/o;->a:Lio/rx_cache2/internal/cache/f;

    invoke-virtual {v0, p1}, Lio/rx_cache2/internal/cache/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lio/rx_cache2/internal/cache/o;->a:Lio/rx_cache2/internal/cache/f;

    invoke-virtual {v0, p1, p2}, Lio/rx_cache2/internal/cache/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lio/rx_cache2/internal/cache/o;->a:Lio/rx_cache2/internal/cache/f;

    invoke-virtual {v0, p1, p2, p3}, Lio/rx_cache2/internal/cache/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;ZZ)V
    .locals 8

    .line 45
    iget-object v0, p0, Lio/rx_cache2/internal/cache/o;->c:Lio/rx_cache2/internal/cache/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lio/rx_cache2/internal/cache/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;ZZ)V

    return-void
.end method
