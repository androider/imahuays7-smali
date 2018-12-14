.class Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$2;
.super Ljava/lang/Object;
.source "WatchedShareActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 219
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    .line 223
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
