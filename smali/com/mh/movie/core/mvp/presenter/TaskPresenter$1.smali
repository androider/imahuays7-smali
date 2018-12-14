.class Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "TaskPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->a(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bd$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bd$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    const-string v0, "0021"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0022"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0023"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->c(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/bd$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/bd$b;->d()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->b(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bd$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bd$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bd$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bd$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
