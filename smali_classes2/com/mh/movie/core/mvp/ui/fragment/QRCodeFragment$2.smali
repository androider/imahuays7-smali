.class Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;
.super Ljava/lang/Object;
.source "QRCodeFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->save2Album(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;->e()V

    goto :goto_0

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->c(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
