.class Lcom/mh/movie/core/mvp/model/a/b$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "ResultStrHandleSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mh/movie/core/mvp/model/a/b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/model/a/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/a/b$1;->b:Lcom/mh/movie/core/mvp/model/a/b;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/model/a/b$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/a/b$1;->a:Ljava/lang/String;

    const-string v1, "0005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    const-string v1, "\u8be5\u7528\u6237\u5df2\u88ab\u5c01\u9501\uff01"

    invoke-virtual {v0, v1}, Lcom/jess/arms/integration/AppManager;->showToast(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c()V

    .line 124
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 125
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, ""

    const-string v2, "login_out"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->getUid()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;J)V

    .line 127
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string v0, ""

    const-string v1, "updateUserInfo"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->a(Ljava/lang/String;)V

    return-void
.end method
