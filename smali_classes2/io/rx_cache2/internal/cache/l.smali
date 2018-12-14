.class public final Lio/rx_cache2/internal/cache/l;
.super Ljava/lang/Object;
.source "RetrieveRecord_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/cache/k;",
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

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/i;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/i;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/rx_cache2/internal/cache/l;->a:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lio/rx_cache2/internal/cache/l;->b:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lio/rx_cache2/internal/cache/l;->c:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lio/rx_cache2/internal/cache/l;->d:Ljavax/inject/Provider;

    .line 34
    iput-object p5, p0, Lio/rx_cache2/internal/cache/l;->e:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/i;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/rx_cache2/internal/cache/l;"
        }
    .end annotation

    .line 53
    new-instance v6, Lio/rx_cache2/internal/cache/l;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/rx_cache2/internal/cache/l;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/cache/k;
    .locals 7

    .line 39
    new-instance v6, Lio/rx_cache2/internal/cache/k;

    iget-object v0, p0, Lio/rx_cache2/internal/cache/l;->a:Ljavax/inject/Provider;

    .line 40
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/rx_cache2/internal/d;

    iget-object v0, p0, Lio/rx_cache2/internal/cache/l;->b:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/rx_cache2/internal/e;

    iget-object v0, p0, Lio/rx_cache2/internal/cache/l;->c:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/rx_cache2/internal/cache/f;

    iget-object v0, p0, Lio/rx_cache2/internal/cache/l;->d:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/rx_cache2/internal/cache/i;

    iget-object v0, p0, Lio/rx_cache2/internal/cache/l;->e:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/rx_cache2/internal/cache/k;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;Lio/rx_cache2/internal/cache/f;Lio/rx_cache2/internal/cache/i;Ljava/lang/String;)V

    return-object v6
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/l;->a()Lio/rx_cache2/internal/cache/k;

    move-result-object v0

    return-object v0
.end method
