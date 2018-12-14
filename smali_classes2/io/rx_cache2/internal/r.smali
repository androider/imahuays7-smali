.class public final Lio/rx_cache2/internal/r;
.super Ljava/lang/Object;
.source "RxCacheModule_ProvideMemoryFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/rx_cache2/internal/l;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/l;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/rx_cache2/internal/r;->a:Lio/rx_cache2/internal/l;

    return-void
.end method

.method public static a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/r;
    .locals 1

    .line 25
    new-instance v0, Lio/rx_cache2/internal/r;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/r;-><init>(Lio/rx_cache2/internal/l;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/d;
    .locals 2

    .line 20
    iget-object v0, p0, Lio/rx_cache2/internal/r;->a:Lio/rx_cache2/internal/l;

    .line 21
    invoke-virtual {v0}, Lio/rx_cache2/internal/l;->c()Lio/rx_cache2/internal/d;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 20
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/internal/d;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/rx_cache2/internal/r;->a()Lio/rx_cache2/internal/d;

    move-result-object v0

    return-object v0
.end method
