.class public Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "WebViewActivity.java"


# instance fields
.field avi:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c003c
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field llShare:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0217
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

    .line 43
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 225
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UrlUtils;->buildURI(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->c:Ljava/lang/String;

    const-string v0, "WebViewActivity"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webUrl---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p0}, Lcom/jess/arms/c/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u6ca1\u6709\u7f51\u7edc"

    .line 211
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    sget p1, Lcom/mh/movie/core/R$layout;->activity_web_view:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 199
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->finish()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 0
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 80
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->avi:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->a()V

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 83
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "webview_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->c:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "parameterMap"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->d:Ljava/util/Map;

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 92
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 156
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->e()V

    .line 197
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/bf;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/bf;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    return-void
.end method
