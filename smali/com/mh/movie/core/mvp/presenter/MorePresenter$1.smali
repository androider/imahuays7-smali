.class Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MorePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/MorePresenter;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/MorePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/MorePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Z)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    iput-boolean p4, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;->a:Z

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->a(Lcom/mh/movie/core/mvp/presenter/MorePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ab$b;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;->a:Z

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/a/ab$b;->a(Ljava/util/List;Z)V

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    iget v1, v1, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->i:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->l:Z

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    iget v0, p1, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->j:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->j:I

    return-void
.end method
