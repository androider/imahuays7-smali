.class Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;
.super Ljava/lang/Object;
.source "ApkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->setUiBeforShow()V
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

    .line 150
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;)V

    return-void
.end method
