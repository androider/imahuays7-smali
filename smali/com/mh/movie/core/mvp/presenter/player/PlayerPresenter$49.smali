.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    .line 792
    iget p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->a:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 793
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->setIsLike(I)V

    .line 794
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->v(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getLikeNum()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(II)V

    goto :goto_0

    .line 795
    :cond_0
    iget p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->a:I

    if-ne p1, v0, :cond_1

    .line 796
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->setUnLike(I)V

    .line 797
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->w(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getUnlikeNum()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->b(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 789
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
