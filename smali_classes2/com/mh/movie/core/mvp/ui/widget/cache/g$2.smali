.class Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/mh/movie/core/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/g;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 6

    .line 382
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-static {p4}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 383
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object p4, p4, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 384
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object p4, p4, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    iget-object p5, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object p5, p5, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p5}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 385
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object p4, p4, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    iget-object p5, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object p5, p5, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p5}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 386
    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDownloadSize()J

    move-result-wide p4

    sub-long v4, p2, p4

    .line 387
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-static {p4}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    move-result-object v0

    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object p4, p4, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->a(Ljava/lang/String;JJ)V

    .line 391
    :cond_0
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-virtual {p4, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v1

    .line 400
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-virtual {v3, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    move-result-object p1

    invoke-interface {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 420
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-interface {p1, v0, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->a(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    :cond_0
    return-void
.end method
