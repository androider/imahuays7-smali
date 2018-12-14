.class Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$1;
.super Ljava/lang/Object;
.source "ApkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->onCreateView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->c(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->openURL(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
