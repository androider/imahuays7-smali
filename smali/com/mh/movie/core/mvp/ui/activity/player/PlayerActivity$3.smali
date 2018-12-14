.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$3;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 1101
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->J(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    move-result-object p1

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/i;->a(Landroid/view/View;)V

    return-void
.end method
