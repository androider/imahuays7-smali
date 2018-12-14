.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;
.super Ljava/lang/Object;
.source "CacheView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;I)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->a:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 514
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->a:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->a:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 516
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/ui/adapter/c;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->b:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemChanged(I)V

    .line 517
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 518
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
