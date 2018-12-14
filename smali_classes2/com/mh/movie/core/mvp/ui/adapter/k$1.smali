.class Lcom/mh/movie/core/mvp/ui/adapter/k$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "HeaderImgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/k;->a(Lcom/mh/movie/core/mvp/ui/adapter/k$a;I)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/k$a;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/k;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/k;Lcom/mh/movie/core/mvp/ui/adapter/k$a;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/k;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/k$a;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
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

    .line 56
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/k$a;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/k$1;->a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
