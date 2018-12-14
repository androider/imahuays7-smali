.class Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$1;
.super Ljava/lang/Object;
.source "WatchedShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->b(Landroid/os/Bundle;)V
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

    .line 185
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->onBackPressed()V

    return-void
.end method
