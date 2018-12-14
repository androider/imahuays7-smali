.class public Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WebViewActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->pb_webview:I

    const-string v1, "field \'pbWebview\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->webview:I

    const-string v1, "field \'webview\'"

    const-class v2, Landroid/webkit/WebView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->ll_share:I

    const-string v1, "field \'llShare\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->llShare:Landroid/widget/LinearLayout;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->loading:I

    const-string v1, "field \'loadingView\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->loadingView:Landroid/widget/FrameLayout;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->avi:I

    const-string v1, "field \'avi\'"

    const-class v2, Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->avi:Lcom/wang/avi/AVLoadingIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->llShare:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->loadingView:Landroid/widget/FrameLayout;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->avi:Lcom/wang/avi/AVLoadingIndicatorView;

    return-void
.end method
