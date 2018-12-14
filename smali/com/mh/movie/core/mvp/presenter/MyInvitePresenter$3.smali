.class Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MyInvitePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->f()V
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

    .line 80
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$3;->a(Ljava/util/List;)V

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

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    iget v1, v0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->i:I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->d(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ah$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ah$b;->b(Ljava/util/List;)V

    return-void
.end method
