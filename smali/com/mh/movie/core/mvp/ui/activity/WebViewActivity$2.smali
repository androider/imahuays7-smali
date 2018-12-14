.class Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 126
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->loadingView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->loadingView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "https://"

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "http://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p2, "\u9ebb\u82b1\u5f71\u89c6"

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    return-void
.end method
