.class public final Lio/rx_cache2/internal/s;
.super Ljava/lang/Object;
.source "RxCacheModule_ProvideMigrationsFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Ljava/util/List<",
        "Lio/rx_cache2/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/rx_cache2/internal/l;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/l;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/rx_cache2/internal/s;->a:Lio/rx_cache2/internal/l;

    return-void
.end method

.method public static a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/s;
    .locals 1

    .line 27
    new-instance v0, Lio/rx_cache2/internal/s;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/s;-><init>(Lio/rx_cache2/internal/l;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lio/rx_cache2/internal/s;->a:Lio/rx_cache2/internal/l;

    .line 23
    invoke-virtual {v0}, Lio/rx_cache2/internal/l;->g()Ljava/util/List;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/rx_cache2/internal/s;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
