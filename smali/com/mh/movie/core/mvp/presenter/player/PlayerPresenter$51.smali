.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/lang/String;I)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 822
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .line 825
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->x(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 828
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->addMoney(I)V

    .line 829
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u5f39\u5e55\u6210\u529f\uff0c+%s\u9ebb\u82b1\u5e01"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
