.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$28;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$28;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$28;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 997
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, "msg"

    const-string v2, "make_money"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$28;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->finish()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$28;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
