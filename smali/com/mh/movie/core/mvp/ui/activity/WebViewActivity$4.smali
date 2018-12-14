.class Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 156
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 159
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 164
    :cond_1
    :goto_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    .line 165
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "\u4fdd\u5b58\u56fe\u7247\u5230\u672c\u5730"

    .line 166
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "\u786e\u8ba4"

    .line 167
    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1;

    invoke-direct {v2, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;Landroid/webkit/WebView$HitTestResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string p1, "\u53d6\u6d88"

    .line 180
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WebViewActivity$4;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
