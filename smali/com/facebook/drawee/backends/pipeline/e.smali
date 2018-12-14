.class public Lcom/facebook/drawee/backends/pipeline/e;
.super Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "Lcom/facebook/drawee/backends/pipeline/e;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/g/c;",
        ">;",
        "Lcom/facebook/imagepipeline/g/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/d/g;

.field private final b:Lcom/facebook/drawee/backends/pipeline/g;

.field private c:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/f/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/drawee/backends/pipeline/b/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/backends/pipeline/b/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/g;Lcom/facebook/imagepipeline/d/g;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/drawee/backends/pipeline/g;",
            "Lcom/facebook/imagepipeline/d/g;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 59
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/e;->a:Lcom/facebook/imagepipeline/d/g;

    .line 60
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/e;->b:Lcom/facebook/drawee/backends/pipeline/g;

    return-void
.end method

.method public static a(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 3

    .line 183
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/e$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "is not supported. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_0
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    .line 187
    :pswitch_1
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    .line 185
    :pswitch_2
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o()Lcom/facebook/cache/common/b;
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 143
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->a:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/g;->c()Lcom/facebook/imagepipeline/c/f;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->q()Lcom/facebook/imagepipeline/request/b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->c()Ljava/lang/Object;

    move-result-object v2

    .line 147
    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/c/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/b;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->c()Ljava/lang/Object;

    move-result-object v2

    .line 151
    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/c/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/drawee/c/a;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/b/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/c/a;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/b/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;"
        }
    .end annotation

    .line 166
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/e;->a:Lcom/facebook/imagepipeline/d/g;

    .line 169
    invoke-static {p5}, Lcom/facebook/drawee/backends/pipeline/e;->a(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p5

    .line 170
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->a(Lcom/facebook/drawee/c/a;)Lcom/facebook/imagepipeline/h/c;

    move-result-object p1

    .line 166
    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/h/c;)Lcom/facebook/b/c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/facebook/drawee/c/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/b/c;
    .locals 6

    .line 39
    move-object v3, p3

    check-cast v3, Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/drawee/backends/pipeline/e;->a(Lcom/facebook/drawee/c/a;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/b/c;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lcom/facebook/drawee/backends/pipeline/d;
    .locals 8

    .line 113
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeControllerBuilder#obtainController"

    .line 114
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->h()Lcom/facebook/drawee/c/a;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/e;->l()Ljava/lang/String;

    move-result-object v3

    .line 120
    instance-of v1, v0, Lcom/facebook/drawee/backends/pipeline/d;

    if-eqz v1, :cond_1

    .line 121
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/d;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->b:Lcom/facebook/drawee/backends/pipeline/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/g;->a()Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object v0

    .line 126
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/facebook/drawee/backends/pipeline/e;->a(Lcom/facebook/drawee/c/a;Ljava/lang/String;)Lcom/facebook/common/internal/j;

    move-result-object v2

    .line 128
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/e;->o()Lcom/facebook/cache/common/b;

    move-result-object v4

    .line 129
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->c()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/drawee/backends/pipeline/e;->c:Lcom/facebook/common/internal/ImmutableList;

    iget-object v7, p0, Lcom/facebook/drawee/backends/pipeline/e;->d:Lcom/facebook/drawee/backends/pipeline/b/b;

    move-object v1, v0

    .line 125
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/common/internal/j;Ljava/lang/String;Lcom/facebook/cache/common/b;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/drawee/backends/pipeline/b/b;)V

    .line 132
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->e:Lcom/facebook/drawee/backends/pipeline/b/f;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/backends/pipeline/b/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 135
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 138
    :cond_3
    throw v0
.end method

.method public a(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    return-object p1

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/facebook/imagepipeline/common/e;->b()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/e;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 71
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    return-object p1
.end method

.method protected a(Lcom/facebook/drawee/c/a;)Lcom/facebook/imagepipeline/h/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 175
    instance-of v0, p1, Lcom/facebook/drawee/backends/pipeline/d;

    if-eqz v0, :cond_0

    .line 176
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/d;->b()Lcom/facebook/imagepipeline/h/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic b(Landroid/net/Uri;)Lcom/facebook/drawee/c/d;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->a(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b()Lcom/facebook/drawee/controller/a;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->a()Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object v0

    return-object v0
.end method
