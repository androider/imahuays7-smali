.class Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2$1;
.super Ljava/lang/Object;
.source "QRCodeActivity1.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2$1;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2$1;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2$1;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->save2Album(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2$1;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;->e()V

    :cond_0
    return-void
.end method
