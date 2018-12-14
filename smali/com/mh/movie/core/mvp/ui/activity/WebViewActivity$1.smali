.class Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


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

    .line 95
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 100
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    invoke-static {p2, p1}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;Ljava/lang/String;)V

    return-void
.end method
