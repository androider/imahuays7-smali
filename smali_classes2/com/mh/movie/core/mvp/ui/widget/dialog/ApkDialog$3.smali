.class Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;
.super Ljava/lang/Object;
.source "ApkDialog.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Landroid/view/View;)V
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

    .line 176
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

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

    .line 191
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->showPmsExternalStorage(Landroid/content/Context;)V

    .line 192
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;)Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    .line 193
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->l(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->e(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->f(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->g(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->h(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u8fde\u63a5\u4e2d..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->j(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->k(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->luncherloadService(Landroid/content/Context;Ljava/lang/String;Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;)V

    return-void
.end method
