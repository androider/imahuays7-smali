.class Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "RegistPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/as$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/as$b;->c()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->b(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/as$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/as$b;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->c(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/as$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/as$b;->d()V

    return-void
.end method
