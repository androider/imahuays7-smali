.class public Lcom/mh/movie/core/androidupnp/b/d;
.super Ljava/lang/Object;
.source "ClingDeviceList.java"


# static fields
.field private static a:Lcom/mh/movie/core/androidupnp/b/d;


# instance fields
.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/mh/movie/core/androidupnp/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/b/d;->b:Ljava/util/Collection;

    return-void
.end method

.method public static a()Lcom/mh/movie/core/androidupnp/b/d;
    .locals 1

    .line 32
    sget-object v0, Lcom/mh/movie/core/androidupnp/b/d;->a:Lcom/mh/movie/core/androidupnp/b/d;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/mh/movie/core/androidupnp/b/d;

    invoke-direct {v0}, Lcom/mh/movie/core/androidupnp/b/d;-><init>()V

    sput-object v0, Lcom/mh/movie/core/androidupnp/b/d;->a:Lcom/mh/movie/core/androidupnp/b/d;

    .line 35
    :cond_0
    sget-object v0, Lcom/mh/movie/core/androidupnp/b/d;->a:Lcom/mh/movie/core/androidupnp/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/fourthline/cling/model/meta/Device;)Lcom/mh/movie/core/androidupnp/b/c;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/b/d;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/androidupnp/b/c;

    .line 49
    invoke-virtual {v1}, Lcom/mh/movie/core/androidupnp/b/c;->a()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/meta/Device;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/androidupnp/b/c;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/b/d;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/mh/movie/core/androidupnp/b/c;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/b/d;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public b(Lcom/mh/movie/core/androidupnp/b/c;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/b/d;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/b/d;->b:Ljava/util/Collection;

    .line 78
    sput-object v0, Lcom/mh/movie/core/androidupnp/b/d;->a:Lcom/mh/movie/core/androidupnp/b/d;

    return-void
.end method
