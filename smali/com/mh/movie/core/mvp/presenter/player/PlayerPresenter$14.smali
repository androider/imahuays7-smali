.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(III)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 941
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;->a(Ljava/util/List;)V

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

    .line 944
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;I)I

    .line 946
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->e:I

    if-ge v0, v1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->E(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->g()V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;->a:I

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/util/List;I)V

    return-void
.end method
