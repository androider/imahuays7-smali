.class Lcom/mh/movie/core/c/f$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "WebShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/c/f;->b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mh/movie/core/c/f;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/c/f;Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mh/movie/core/c/f$1;->c:Lcom/mh/movie/core/c/f;

    iput-object p2, p0, Lcom/mh/movie/core/c/f$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    iput-object p3, p0, Lcom/mh/movie/core/c/f$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Lio/reactivex/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/c/d;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/mh/movie/core/c/f$1;->c:Lcom/mh/movie/core/c/f;

    iget-object v0, p0, Lcom/mh/movie/core/c/f$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {p2, v0, p1}, Lcom/mh/movie/core/c/f;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/graphics/Bitmap;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/SimpleTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/c/f$1;->b:Landroid/content/Context;

    const-string v0, "\u5206\u4eab\u56fe\u7247\u52a0\u8f7d\u5931\u8d25\uff0c\u65e0\u6cd5\u5206\u4eab\uff01"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Lio/reactivex/annotations/Nullable;
        .end annotation
    .end param

    .line 61
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/c/f$1;->a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
