.class Lcom/mh/movie/core/mvp/ui/widget/b/c$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "WebpDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field final b:Lcom/mh/movie/core/mvp/ui/widget/b/d;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/mh/movie/core/mvp/ui/widget/b/d;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 251
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 259
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/b/c;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;-><init>(Lcom/mh/movie/core/mvp/ui/widget/b/c$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
