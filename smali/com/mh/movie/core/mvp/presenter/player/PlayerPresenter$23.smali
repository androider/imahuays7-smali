.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILjava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->a:I

    iput-object p5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->b:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;)V
    .locals 5

    .line 703
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-object p1, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->B:Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;

    .line 705
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput v2, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    .line 707
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setPlayType(I)V

    .line 708
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 709
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object v0

    .line 710
    iput v2, v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    .line 711
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->save()Z

    goto :goto_1

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    if-ne v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_2

    .line 715
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput v2, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v2, v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->b:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x3

    iput v1, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    .line 725
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-boolean v2, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->m:Z

    .line 726
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->p(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ILjava/util/List;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 728
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->q(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    if-eq v0, v1, :cond_5

    .line 733
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoDownGetM3u8FormatIndex(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;I)I

    move-result v0

    if-gez v0, :cond_4

    .line 735
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoUpGetM3u8FormatIndex(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;I)I

    move-result v0

    if-gez v0, :cond_4

    .line 737
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u5bf9\u5e94\u7684\u5206\u8fa8\u7387\u51fa\u9519\uff01"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 741
    :cond_4
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput v0, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    .line 744
    :cond_5
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 747
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v3, v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ILjava/util/List;)V

    .line 748
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-boolean v2, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->m:Z

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 750
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v2, v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s:I

    invoke-interface {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 752
    :cond_6
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u5bf9\u5e94\u7684\u5206\u8fa8\u7387\u51fa\u9519\uff01"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 700
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->a(Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 759
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    .line 761
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->t(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    const-string v0, "url_player_not_network_error"

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;->d:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v2, v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s:I

    invoke-interface {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
