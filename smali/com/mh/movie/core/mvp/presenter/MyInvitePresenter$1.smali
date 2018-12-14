.class Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MyInvitePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    const/4 v1, 0x2

    iput v1, v0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->i:I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->a(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ah$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ah$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->b(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ah$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/ah$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->c(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ah$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/ah$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
