.class public final Lio/rx_cache2/internal/u;
.super Ljava/lang/Object;
.source "RxCacheModule_ProvideProcessorProvidersFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/rx_cache2/internal/l;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Lio/rx_cache2/internal/l;Lio/rx_cache2/internal/g;)Lio/rx_cache2/internal/f;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/l;->a(Lio/rx_cache2/internal/g;)Lio/rx_cache2/internal/f;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/rx_cache2/internal/f;

    return-object p0
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/f;
    .locals 2

    .line 27
    iget-object v0, p0, Lio/rx_cache2/internal/u;->a:Lio/rx_cache2/internal/l;

    iget-object v1, p0, Lio/rx_cache2/internal/u;->b:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rx_cache2/internal/g;

    invoke-virtual {v0, v1}, Lio/rx_cache2/internal/l;->a(Lio/rx_cache2/internal/g;)Lio/rx_cache2/internal/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/internal/f;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lio/rx_cache2/internal/u;->a()Lio/rx_cache2/internal/f;

    move-result-object v0

    return-object v0
.end method
