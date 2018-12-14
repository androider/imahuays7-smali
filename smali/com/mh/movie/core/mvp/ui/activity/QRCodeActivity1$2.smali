.class Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;
.super Ljava/lang/Object;
.source "QRCodeActivity1.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->save2Album(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 238
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->b(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;->e()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V

    :cond_2
    :goto_0
    return-void
.end method
