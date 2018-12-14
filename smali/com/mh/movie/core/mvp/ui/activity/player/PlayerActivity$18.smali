.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$18;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;
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

    .line 2386
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$18;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2389
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$18;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoScreenLock:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$18;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoScreenLock:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
