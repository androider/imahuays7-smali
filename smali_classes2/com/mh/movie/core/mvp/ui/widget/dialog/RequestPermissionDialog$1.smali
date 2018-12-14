.class Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$1;
.super Lcom/mh/movie/core/mvp/ui/widget/a/c;
.source "RequestPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;->a()V

    :cond_0
    return-void
.end method
