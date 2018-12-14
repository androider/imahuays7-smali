.class Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$5;
.super Ljava/lang/Object;
.source "ApkDialog.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b()V
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

    .line 285
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$5;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$5;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 289
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$5;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->m(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$5;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->m(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
