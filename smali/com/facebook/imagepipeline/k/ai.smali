.class public Lcom/facebook/imagepipeline/k/ai;
.super Ljava/lang/Object;
.source "PostprocessedBitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/k/ai$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/c/f;

.field private final c:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ai;->a:Lcom/facebook/imagepipeline/c/p;

    .line 39
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ai;->b:Lcom/facebook/imagepipeline/c/f;

    .line 40
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/ai;->c:Lcom/facebook/imagepipeline/k/ak;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "PostprocessedBitmapMemoryCacheProducer"

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v0

    .line 49
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->d()Ljava/lang/Object;

    move-result-object v3

    .line 54
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->q()Lcom/facebook/imagepipeline/request/b;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 55
    invoke-interface {v4}, Lcom/facebook/imagepipeline/request/b;->a()Lcom/facebook/cache/common/b;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ai;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v5, p0, Lcom/facebook/imagepipeline/k/ai;->b:Lcom/facebook/imagepipeline/c/f;

    .line 61
    invoke-interface {v5, v2, v3}, Lcom/facebook/imagepipeline/c/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/b;

    move-result-object v8

    .line 62
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/ai;->a:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v2, v8}, Lcom/facebook/imagepipeline/c/p;->a(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ai;->a()Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/an;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "cached_value_found"

    const-string v4, "true"

    invoke-static {v3, v4}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 64
    :cond_1
    invoke-interface {v0, v1, p2, v3}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "PostprocessedBitmapMemoryCacheProducer"

    const/4 v3, 0x1

    .line 68
    invoke-interface {v0, v1, p2, v3}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 69
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/k/k;->b(F)V

    .line 70
    invoke-interface {p1, v2, v3}, Lcom/facebook/imagepipeline/k/k;->b(Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->close()V

    goto :goto_0

    .line 73
    :cond_2
    instance-of v9, v4, Lcom/facebook/imagepipeline/request/c;

    .line 75
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()Z

    move-result v11

    .line 76
    new-instance v2, Lcom/facebook/imagepipeline/k/ai$a;

    iget-object v10, p0, Lcom/facebook/imagepipeline/k/ai;->a:Lcom/facebook/imagepipeline/c/p;

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/facebook/imagepipeline/k/ai$a;-><init>(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/cache/common/b;ZLcom/facebook/imagepipeline/c/p;Z)V

    .line 81
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ai;->a()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/an;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "cached_value_found"

    const-string v4, "false"

    invoke-static {v3, v4}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 79
    :cond_3
    invoke-interface {v0, v1, p1, v3}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/ai;->c:Lcom/facebook/imagepipeline/k/ak;

    invoke-interface {p1, v2, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    :goto_0
    return-void

    .line 56
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ai;->c:Lcom/facebook/imagepipeline/k/ak;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method
