.class Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView$HitTestResult;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;Landroid/webkit/WebView$HitTestResult;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1;->b:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1;->a:Landroid/webkit/WebView$HitTestResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1;->a:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    .line 172
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1$1;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
