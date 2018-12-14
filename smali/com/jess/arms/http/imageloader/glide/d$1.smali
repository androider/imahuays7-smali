.class Lcom/jess/arms/http/imageloader/glide/d$1;
.super Ljava/lang/Object;
.source "GlideImageLoaderStrategy.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jess/arms/http/imageloader/glide/d;->b(Landroid/content/Context;Lcom/jess/arms/http/imageloader/glide/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jess/arms/http/imageloader/glide/d;


# direct methods
.method constructor <init>(Lcom/jess/arms/http/imageloader/glide/d;Landroid/content/Context;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/d$1;->b:Lcom/jess/arms/http/imageloader/glide/d;

    iput-object p2, p0, Lcom/jess/arms/http/imageloader/glide/d$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/glide/d$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearDiskCache()V

    return-void
.end method
