.class public Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MallWebViewActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->webview:I

    const-string v1, "field \'webview\'"

    const-class v2, Landroid/webkit/WebView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->pb_webview:I

    const-string v1, "field \'pbWebview\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->ll_content:I

    const-string v1, "field \'llContent\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->llContent:Landroid/widget/LinearLayout;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->loading:I

    const-string v1, "field \'loadingView\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->loadingView:Landroid/widget/FrameLayout;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->avi:I

    const-string v1, "field \'avi\'"

    const-class v2, Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->avi:Lcom/wang/avi/AVLoadingIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->llContent:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->loadingView:Landroid/widget/FrameLayout;

    .line 54
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->avi:Lcom/wang/avi/AVLoadingIndicatorView;

    return-void
.end method
