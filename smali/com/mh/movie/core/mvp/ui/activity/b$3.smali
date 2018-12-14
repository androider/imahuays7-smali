.class Lcom/mh/movie/core/mvp/ui/activity/b$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "AbsSystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/b$3;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b$3;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u9646\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 185
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->a:Z

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b$3;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUid()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;J)V

    .line 187
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUserInfo()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    .line 188
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b$3;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUserInfo()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUrlMap()Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    move-result-object p1

    sput-object p1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/b$3;->a(Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 199
    invoke-super {p0}, Lcom/mh/movie/core/mvp/model/a/b;->onComplete()V

    .line 200
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b$3;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/b;->a(Lcom/mh/movie/core/mvp/ui/activity/b;Lcom/mh/movie/core/mvp/model/a/a;)Lcom/mh/movie/core/mvp/model/a/a;

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b$3;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/b;->a(Lcom/mh/movie/core/mvp/ui/activity/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
