.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;
.super Landroid/app/Dialog;
.source "NoticeDialog.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/i;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/i;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 50
    sget v0, Lcom/mh/movie/core/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->b:Landroid/webkit/WebView;

    .line 51
    sget v0, Lcom/mh/movie/core/R$id;->iv_notice_close:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->c:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->b:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_notice:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->b()V

    .line 40
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->a()V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method
