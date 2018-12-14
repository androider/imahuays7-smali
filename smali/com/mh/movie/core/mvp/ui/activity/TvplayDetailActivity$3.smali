.class Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$3;
.super Ljava/lang/Object;
.source "TvplayDetailActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 312
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, "msg"

    const-string v2, "tvDetailToMain"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, "msg"

    const-string v2, "make_money"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->finish()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
