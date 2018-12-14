.class public final Lio/rx_cache2/internal/t;
.super Ljava/lang/Object;
.source "RxCacheModule_ProvidePersistenceFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/rx_cache2/internal/l;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/l;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/l;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/b;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/rx_cache2/internal/t;->a:Lio/rx_cache2/internal/l;

    .line 20
    iput-object p2, p0, Lio/rx_cache2/internal/t;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Lio/rx_cache2/internal/l;Ljavax/inject/Provider;)Lio/rx_cache2/internal/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/l;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/b;",
            ">;)",
            "Lio/rx_cache2/internal/t;"
        }
    .end annotation

    .line 32
    new-instance v0, Lio/rx_cache2/internal/t;

    invoke-direct {v0, p0, p1}, Lio/rx_cache2/internal/t;-><init>(Lio/rx_cache2/internal/l;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/e;
    .locals 2

    .line 25
    iget-object v0, p0, Lio/rx_cache2/internal/t;->a:Lio/rx_cache2/internal/l;

    iget-object v1, p0, Lio/rx_cache2/internal/t;->b:Ljavax/inject/Provider;

    .line 26
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rx_cache2/internal/b;

    invoke-virtual {v0, v1}, Lio/rx_cache2/internal/l;->a(Lio/rx_cache2/internal/b;)Lio/rx_cache2/internal/e;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 25
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/internal/e;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lio/rx_cache2/internal/t;->a()Lio/rx_cache2/internal/e;

    move-result-object v0

    return-object v0
.end method
