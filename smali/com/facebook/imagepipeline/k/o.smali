.class public Lcom/facebook/imagepipeline/k/o;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "Lcom/facebook/imagepipeline/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/e;

.field private final b:Lcom/facebook/imagepipeline/c/e;

.field private final c:Lcom/facebook/imagepipeline/c/f;

.field private final d:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/o;->a:Lcom/facebook/imagepipeline/c/e;

    .line 53
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/o;->b:Lcom/facebook/imagepipeline/c/e;

    .line 54
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/o;->c:Lcom/facebook/imagepipeline/c/f;

    .line 55
    iput-object p4, p0, Lcom/facebook/imagepipeline/k/o;->d:Lcom/facebook/imagepipeline/k/ak;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/o;)Lcom/facebook/imagepipeline/k/ak;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/o;->d:Lcom/facebook/imagepipeline/k/ak;

    return-object p0
.end method

.method static a(Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;ZI)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/an;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/k/an;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "cached_value_found"

    .line 150
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "encodedImageSize"

    .line 152
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 148
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "cached_value_found"

    .line 156
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p0, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/k/al;)V
    .locals 1

    .line 163
    new-instance v0, Lcom/facebook/imagepipeline/k/o$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/k/o$2;-><init>(Lcom/facebook/imagepipeline/k/o;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/k/al;->a(Lcom/facebook/imagepipeline/k/am;)V

    return-void
.end method

.method static synthetic a(Lbolts/g;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/facebook/imagepipeline/k/o;->b(Lbolts/g;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)Lbolts/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")",
            "Lbolts/f<",
            "Lcom/facebook/imagepipeline/g/e;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v2

    .line 87
    new-instance v6, Lcom/facebook/imagepipeline/k/o$1;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/k/o$1;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-object v6
.end method

.method private static b(Lbolts/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/g<",
            "*>;)Z"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lbolts/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lbolts/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbolts/g;->f()Ljava/lang/Exception;

    move-result-object p0

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 130
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 131
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/k/k;->b(Ljava/lang/Object;I)V

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o;->d:Lcom/facebook/imagepipeline/k/ak;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->c(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void

    .line 67
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DiskCacheProducer"

    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/o;->c:Lcom/facebook/imagepipeline/c/f;

    .line 70
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/c/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/b;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o;->b:Lcom/facebook/imagepipeline/c/e;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o;->a:Lcom/facebook/imagepipeline/c/e;

    .line 74
    :goto_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/b;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/g;

    move-result-object v0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)Lbolts/f;

    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lbolts/g;->a(Lbolts/f;)Lbolts/g;

    .line 79
    invoke-direct {p0, v2, p2}, Lcom/facebook/imagepipeline/k/o;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method
