.class public final Lio/rx_cache2/internal/cache/g;
.super Ljava/lang/Object;
.source "EvictRecord_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/cache/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/e;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/rx_cache2/internal/cache/g;->a:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lio/rx_cache2/internal/cache/g;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/e;",
            ">;)",
            "Lio/rx_cache2/internal/cache/g;"
        }
    .end annotation

    .line 31
    new-instance v0, Lio/rx_cache2/internal/cache/g;

    invoke-direct {v0, p0, p1}, Lio/rx_cache2/internal/cache/g;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/cache/f;
    .locals 3

    .line 26
    new-instance v0, Lio/rx_cache2/internal/cache/f;

    iget-object v1, p0, Lio/rx_cache2/internal/cache/g;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rx_cache2/internal/d;

    iget-object v2, p0, Lio/rx_cache2/internal/cache/g;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rx_cache2/internal/e;

    invoke-direct {v0, v1, v2}, Lio/rx_cache2/internal/cache/f;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/g;->a()Lio/rx_cache2/internal/cache/f;

    move-result-object v0

    return-object v0
.end method
