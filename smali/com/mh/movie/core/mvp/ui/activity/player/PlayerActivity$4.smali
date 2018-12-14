.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D()V
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

    .line 1108
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->K(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->L(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1117
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->J(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->show()V

    goto :goto_0

    .line 1120
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->M(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
