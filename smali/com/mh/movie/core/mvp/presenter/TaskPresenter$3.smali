.class Lcom/mh/movie/core/mvp/presenter/TaskPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "TaskPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->b(Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->e(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/bd$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/bd$b;->c()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$3;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->f(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/bd$b;

    const-string v0, "\u4eca\u65e5\u7b7e\u5230\u5df2\u5b8c\u6210\uff0c\u8bf7\u660e\u5929\u518d\u6765"

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/bd$b;->b(Ljava/lang/String;)V

    return-void
.end method
