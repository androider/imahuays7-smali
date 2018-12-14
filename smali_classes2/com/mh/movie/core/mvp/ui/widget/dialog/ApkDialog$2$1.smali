.class Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2$1;
.super Ljava/lang/Object;
.source "ApkDialog.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;Landroid/view/View;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2$1;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2$1;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2$1;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2$1;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V

    :goto_0
    return-void
.end method
