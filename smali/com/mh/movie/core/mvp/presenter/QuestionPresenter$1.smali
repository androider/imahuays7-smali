.class Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "QuestionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->a(Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ao$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ao$b;->b(Ljava/lang/String;)V

    return-void
.end method
