.class public final Lcom/jess/arms/http/imageloader/c;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/jess/arms/http/imageloader/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/jess/arms/http/imageloader/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/c;->a:Lcom/jess/arms/http/imageloader/a;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jess/arms/http/imageloader/b;",
            ">(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/c;->a:Lcom/jess/arms/http/imageloader/a;

    const-string v1, "Please implement BaseImageLoaderStrategy and call GlobalConfigModule.Builder#imageLoaderStrategy(BaseImageLoaderStrategy) in the applyOptions method of ConfigModule"

    invoke-static {v0, v1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/c;->a:Lcom/jess/arms/http/imageloader/a;

    invoke-interface {v0, p1, p2}, Lcom/jess/arms/http/imageloader/a;->a(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jess/arms/http/imageloader/b;",
            ">(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/c;->a:Lcom/jess/arms/http/imageloader/a;

    const-string v1, "Please implement BaseImageLoaderStrategy and call GlobalConfigModule.Builder#imageLoaderStrategy(BaseImageLoaderStrategy) in the applyOptions method of ConfigModule"

    invoke-static {v0, v1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/c;->a:Lcom/jess/arms/http/imageloader/a;

    invoke-interface {v0, p1, p2}, Lcom/jess/arms/http/imageloader/a;->b(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V

    return-void
.end method
