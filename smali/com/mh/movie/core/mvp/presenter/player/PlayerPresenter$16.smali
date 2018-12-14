.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$16;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(IZ)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Z)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$16;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-boolean p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$16;->a:Z

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 968
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$16;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 971
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$16;->a:Z

    if-eqz p1, :cond_0

    .line 972
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$16;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o()V

    :cond_0
    return-void
.end method
