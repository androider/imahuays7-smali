.class public Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WatchedShareActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->iv_head_pic:I

    const-string v1, "field \'ivHeadPic\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivHeadPic:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->tv_user_name:I

    const-string v1, "field \'tvUserName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvUserName:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->iv_image:I

    const-string v1, "field \'ivImage\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivImage:Landroid/widget/ImageView;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->tv_movie_name:I

    const-string v1, "field \'tvMovieName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvMovieName:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->tv_watched_time:I

    const-string v1, "field \'tvWatchedTime\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvWatchedTime:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->tv_watched_num:I

    const-string v1, "field \'tvWatchedNum\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvWatchedNum:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->iv_qrcode:I

    const-string v1, "field \'ivQrcode\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivQrcode:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->iv_background:I

    const-string v1, "field \'ivBackground\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivBackground:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->iv_background_2:I

    const-string v1, "field \'ivBackground2\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivBackground2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->ll_capture_view:I

    const-string v1, "field \'llCaptureView\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureView:Landroid/widget/RelativeLayout;

    .line 43
    sget v0, Lcom/mh/movie/core/R$id;->ll_capture_area:I

    const-string v1, "field \'llCaptureArea\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureArea:Landroid/widget/LinearLayout;

    .line 44
    sget v0, Lcom/mh/movie/core/R$id;->ll_layout_height:I

    const-string v1, "field \'llLayoutHeight\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llLayoutHeight:Landroid/widget/LinearLayout;

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->rv_share:I

    const-string v1, "field \'rvShare\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->rvShare:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    .line 55
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 56
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivHeadPic:Landroid/widget/ImageView;

    .line 57
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvUserName:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivImage:Landroid/widget/ImageView;

    .line 59
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvMovieName:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvWatchedTime:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvWatchedNum:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivQrcode:Landroid/widget/ImageView;

    .line 63
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivBackground:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivBackground2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 65
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureView:Landroid/widget/RelativeLayout;

    .line 66
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureArea:Landroid/widget/LinearLayout;

    .line 67
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llLayoutHeight:Landroid/widget/LinearLayout;

    .line 68
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->rvShare:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
