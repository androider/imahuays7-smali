.class public Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "MallWebViewActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/y$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/y$b;"
    }
.end annotation


# instance fields
.field avi:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c003c
    .end annotation
.end field

.field llContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01cf
    .end annotation
.end field

.field loadingView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0246
    .end annotation
.end field

.field pbWebview:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0291
    .end annotation
.end field

.field svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035b
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field webview:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04cd
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    sget p1, Lcom/mh/movie/core/R$layout;->activity_mall_web_view:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    invoke-static {}, Lcom/mh/movie/core/a/a/al;->a()Lcom/mh/movie/core/a/a/al$a;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/al$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/al$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/bo;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/bo;-><init>(Lcom/mh/movie/core/mvp/a/y$b;)V

    .line 66
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/al$a;->a(Lcom/mh/movie/core/a/b/bo;)Lcom/mh/movie/core/a/a/al$a;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/al$a;->a()Lcom/mh/movie/core/a/a/cj;

    move-result-object p1

    .line 68
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cj;->a(Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->avi:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->a()V

    .line 80
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->e()V

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;

    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 209
    invoke-static {p0}, Lcom/jess/arms/c/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6ca1\u6709\u7f51\u7edc"

    .line 212
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 191
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 155
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 156
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;

    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 247
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 222
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 161
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 162
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;

    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/MallWebViewPresenter;->a(Ljava/lang/String;Z)V

    return-void
.end method
