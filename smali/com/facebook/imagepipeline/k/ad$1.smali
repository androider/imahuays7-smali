.class Lcom/facebook/imagepipeline/k/ad$1;
.super Lcom/facebook/imagepipeline/k/ar;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/ad;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/ar<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/k/an;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic e:Lcom/facebook/imagepipeline/k/ad;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/ad;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ad$1;->e:Lcom/facebook/imagepipeline/k/ad;

    iput-object p6, p0, Lcom/facebook/imagepipeline/k/ad$1;->b:Lcom/facebook/imagepipeline/k/an;

    iput-object p7, p0, Lcom/facebook/imagepipeline/k/ad$1;->c:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/imagepipeline/k/ad$1;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/k/ar;-><init>(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/k/ar;->a(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ad$1;->b:Lcom/facebook/imagepipeline/k/an;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/ad$1;->c:Ljava/lang/String;

    const-string v2, "VideoThumbnailProducer"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/k/ar;->a(Ljava/lang/Exception;)V

    .line 74
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/ad$1;->b:Lcom/facebook/imagepipeline/k/an;

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ad$1;->c:Ljava/lang/String;

    const-string v1, "VideoThumbnailProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/ad$1;->a(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected b(Lcom/facebook/common/references/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "createdThumbnail"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/ad$1;->c(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ad$1;->d()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 64
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/ad$1;->b(Lcom/facebook/common/references/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/facebook/common/references/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected d()Lcom/facebook/common/references/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ad$1;->e:Lcom/facebook/imagepipeline/k/ad;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/ad$1;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/k/ad;->a(Lcom/facebook/imagepipeline/k/ad;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/ad$1;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 85
    invoke-static {v2}, Lcom/facebook/imagepipeline/k/ad;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v2

    .line 83
    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 90
    :cond_1
    new-instance v1, Lcom/facebook/imagepipeline/g/d;

    .line 93
    invoke-static {}, Lcom/facebook/imagepipeline/b/g;->a()Lcom/facebook/imagepipeline/b/g;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/g/g;->a:Lcom/facebook/imagepipeline/g/h;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/facebook/imagepipeline/g/d;-><init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/c;Lcom/facebook/imagepipeline/g/h;I)V

    .line 90
    invoke-static {v1}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method
