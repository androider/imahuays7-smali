.class Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "CommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(IIILcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;->a:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    const/4 v1, 0x2

    iput v1, v0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->i:I

    .line 78
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;->a:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->b(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/i$b;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/a/i$b;->a(Ljava/util/List;I)V

    return-void
.end method
