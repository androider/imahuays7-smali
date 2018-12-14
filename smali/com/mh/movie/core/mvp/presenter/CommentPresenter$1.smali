.class Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "CommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(III)V
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

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;II)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;->a:I

    iput p5, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;->b:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/i$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;->a:I

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;->b:I

    invoke-interface {v0, v1, v2, p1}, Lcom/mh/movie/core/mvp/a/i$b;->a(IILjava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
