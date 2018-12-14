.class Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$2;
.super Lcom/mh/movie/core/mvp/ui/widget/a/c;
.source "DownApkDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$2;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;->onSure()V

    :cond_0
    return-void
.end method
