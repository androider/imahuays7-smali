.class Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MallWebViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;->a(Ljava/lang/String;Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter$1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;->b(Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/y$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/y$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;->a(Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/y$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/y$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;->f:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "url \u5730\u5740\u83b7\u53d6\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;->c(Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/y$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/y$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
