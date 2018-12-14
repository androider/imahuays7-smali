.class Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SetInvitationBindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/TokenAndUidResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/TokenAndUidResponse;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/TokenAndUidResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/TokenAndUidResponse;->getUid()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;J)V

    .line 54
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->a(Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/ay$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/ay$b;->c()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/TokenAndUidResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/TokenAndUidResponse;)V

    return-void
.end method
