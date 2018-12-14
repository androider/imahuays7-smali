.class public final Lio/rx_cache2/internal/cache/p;
.super Ljava/lang/Object;
.source "TwoLayersCache_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/cache/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/k;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/k;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/m;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/rx_cache2/internal/cache/p;->a:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lio/rx_cache2/internal/cache/p;->b:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lio/rx_cache2/internal/cache/p;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/k;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/m;",
            ">;)",
            "Lio/rx_cache2/internal/cache/p;"
        }
    .end annotation

    .line 37
    new-instance v0, Lio/rx_cache2/internal/cache/p;

    invoke-direct {v0, p0, p1, p2}, Lio/rx_cache2/internal/cache/p;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/cache/o;
    .locals 4

    .line 29
    new-instance v0, Lio/rx_cache2/internal/cache/o;

    iget-object v1, p0, Lio/rx_cache2/internal/cache/p;->a:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rx_cache2/internal/cache/f;

    iget-object v2, p0, Lio/rx_cache2/internal/cache/p;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rx_cache2/internal/cache/k;

    iget-object v3, p0, Lio/rx_cache2/internal/cache/p;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rx_cache2/internal/cache/m;

    invoke-direct {v0, v1, v2, v3}, Lio/rx_cache2/internal/cache/o;-><init>(Lio/rx_cache2/internal/cache/f;Lio/rx_cache2/internal/cache/k;Lio/rx_cache2/internal/cache/m;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/p;->a()Lio/rx_cache2/internal/cache/o;

    move-result-object v0

    return-object v0
.end method
