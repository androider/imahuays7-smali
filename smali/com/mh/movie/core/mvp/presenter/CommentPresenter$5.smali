.class Lcom/mh/movie/core/mvp/presenter/CommentPresenter$5;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "CommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->b(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$5;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    iget v2, v1, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->i:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->i:I

    .line 95
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 96
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->c(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/a/i$b;

    invoke-interface {v1, p1, v0}, Lcom/mh/movie/core/mvp/a/i$b;->b(Ljava/util/List;I)V

    return-void
.end method
