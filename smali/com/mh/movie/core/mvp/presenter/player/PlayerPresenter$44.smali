.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;)V
    .locals 9

    .line 1297
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getCoverHUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    .line 1301
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->U(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/mh/movie/core/mvp/ui/activity/player/view/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;->getNum()I

    move-result v2

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;->getType()I

    move-result v3

    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v4, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)I

    move-result v5

    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getShareHtmlAddr()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/mh/movie/core/mvp/ui/activity/player/view/c;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1294
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;)V

    return-void
.end method
