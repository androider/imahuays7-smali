.class Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$7;
.super Ljava/lang/Object;
.source "WatchedShareActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$7;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$7;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 483
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$7;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->f(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$7;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->f(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
