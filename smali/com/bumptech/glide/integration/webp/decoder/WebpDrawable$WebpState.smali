.class Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "WebpDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebpState"
.end annotation


# static fields
.field static final GRAVITY:I = 0x77


# instance fields
.field final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field final frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V
    .locals 0

    .line 291
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 293
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

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

    .line 301
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 297
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
