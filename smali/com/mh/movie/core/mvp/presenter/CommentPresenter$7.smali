.class Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "CommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(ILjava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;->b:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;->b:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->f:Landroid/app/Application;

    const-string v1, "\u8bc4\u8bba\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;->b:Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/i$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;->a:I

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/a/i$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;->a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    return-void
.end method
