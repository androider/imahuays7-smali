.class Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "MallWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->loadingView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->loadingView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->pbWebview:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    return-void
.end method
