.class Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$4;
.super Ljava/lang/Object;
.source "ApkDialog.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$4;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$4;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionFailure(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$4;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V

    .line 269
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$4;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;->a(Z)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$4;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;->a(Z)V

    return-void
.end method
