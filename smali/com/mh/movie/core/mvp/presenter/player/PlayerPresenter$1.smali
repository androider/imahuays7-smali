.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method final synthetic a()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->f()V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
    .locals 6

    .line 620
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->m:Z

    .line 621
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput v1, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    .line 622
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-object p1, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    .line 626
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)I

    move-result v3

    sget v4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->e:I

    iget-object v5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v5, v5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(IIII)V

    .line 627
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f(I)V

    .line 629
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g(I)V

    .line 630
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getFavorited()I

    move-result v3

    invoke-interface {v0, v3, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(IZ)V

    .line 631
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getIsLike()I

    move-result v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v4, v4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getLikeNum()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(II)V

    .line 632
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getUnLike()I

    move-result v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v4, v4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getUnlikeNum()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/mh/movie/core/mvp/a/b/b$b;->b(II)V

    .line 633
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->e(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-boolean v3, v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->p:Z

    invoke-interface {v0, v1, v3}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ZZ)V

    .line 634
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V

    .line 635
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    .line 637
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeState()I

    move-result v4

    if-ne v4, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeUploadCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u96c6\u5168"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u66f4\u65b0\u81f3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeUploadCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u96c6"

    goto :goto_0

    :goto_1
    if-ne v0, v2, :cond_4

    .line 639
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getLastPeriod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeState()I

    move-result v0

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5171"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeUploadCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const-string v2, "\u671f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v4, v0

    goto :goto_5

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getLastPeriod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 642
    :cond_2
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeState()I

    move-result v0

    if-ne v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5171"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeUploadCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u671f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    .line 645
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0, v4}, Lcom/mh/movie/core/mvp/a/b/b$b;->b(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->h(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/util/List;)V

    .line 647
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/player/g;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/player/g;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->i(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/util/List;)V

    .line 650
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/b/b$b;->b(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V

    :goto_6
    const/4 v0, 0x0

    .line 653
    :goto_7
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 654
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getIsShow()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 655
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 659
    :cond_7
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 660
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getKeywords()Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 661
    :goto_9
    array-length v3, p1

    if-ge v2, v3, :cond_9

    .line 662
    aget-object v3, p1, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 663
    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 666
    :cond_9
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->k(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->b(Ljava/util/List;)V

    .line 667
    sget-boolean p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz p1, :cond_a

    return-void

    .line 670
    :cond_a
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    .line 671
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-boolean p1, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->q:Z

    if-eqz p1, :cond_b

    .line 672
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->l(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->t:I

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ILjava/lang/String;)V

    .line 673
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-boolean v1, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->q:Z

    .line 676
    :cond_b
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1, v1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(IZ)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 617
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 681
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->m(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 686
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 687
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    const-string v0, "\u770b\u5b98\uff0c\u672a\u83b7\u53d6\u5230\u76f8\u5173\u5f71\u7247\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ZLjava/lang/String;)V

    return-void
.end method
