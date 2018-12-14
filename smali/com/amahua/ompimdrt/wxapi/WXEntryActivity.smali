.class public Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00de

    .line 23
    invoke-virtual {p0, p1}, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->setContentView(I)V

    .line 26
    new-instance p1, Lcom/mh/movie/core/c/e;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/c/e;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p1}, Lcom/mh/movie/core/c/e;->b()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "###########"

    const-string v1, "onNewIntent"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0, p1}, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 42
    iget-object v0, p0, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 3

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_wx_share_response"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 54
    new-instance v2, Lcom/mh/movie/core/mvp/model/entity/Response;

    invoke-direct {v2, p1}, Lcom/mh/movie/core/mvp/model/entity/Response;-><init>(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/amahua/ompimdrt/wxapi/WXEntryActivity;->finish()V

    return-void
.end method
