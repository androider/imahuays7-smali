.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;
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
.field final synthetic a:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Lcom/mh/movie/core/mvp/model/db/TableCommodity;Ljava/lang/Integer;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;->c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;->a:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1021
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;->c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 1022
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;->c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->I(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;->a:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    iget v1, v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->authId:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;->c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
