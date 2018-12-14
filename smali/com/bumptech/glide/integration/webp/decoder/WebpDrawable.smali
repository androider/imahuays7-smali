.class public Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WebpDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;
    }
.end annotation


# static fields
.field public static final LOOP_FOREVER:I = -0x1

.field public static final LOOP_INTRINSIC:I


# instance fields
.field private applyGravity:Z

.field private destRect:Landroid/graphics/Rect;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private paint:Landroid/graphics/Paint;

.field private final state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    new-instance v8, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 80
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p5

    move v5, p6

    move-object v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    move-object v1, p3

    invoke-direct {v0, v1, v8}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V

    move-object v1, p0

    .line 77
    invoke-direct {v1, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isVisible:Z

    const/4 v1, -0x1

    .line 68
    iput v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    .line 89
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isVisible:Z

    .line 90
    iput v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    .line 91
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Paint;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 96
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V

    .line 97
    iput-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private getDestRect()Landroid/graphics/Rect;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->destRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->destRect:Landroid/graphics/Rect;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->destRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->paint:Landroid/graphics/Paint;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private resetLoopCount()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->loopCount:I

    return-void
.end method

.method private startRunning()V
    .locals 3

    .line 153
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->invalidateSelf()V

    goto :goto_0

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    if-nez v0, :cond_1

    .line 157
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    .line 158
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->subscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V

    .line 159
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopRunning()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->unsubscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 203
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->applyGravity:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    .line 208
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getDestRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->applyGravity:Z

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    check-cast v1, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getDestRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameIndex()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameTransformation()Lcom/bumptech/glide/load/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getSize()I

    move-result v0

    return v0
.end method

.method isRecycled()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->applyGravity:Z

    return-void
.end method

.method public onFrameReady()V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stop()V

    .line 247
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->invalidateSelf()V

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->invalidateSelf()V

    .line 251
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getFrameIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getFrameCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 252
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->loopCount:I

    .line 255
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->loopCount:I

    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    if-lt v0, v1, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stop()V

    :cond_2
    return-void
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled:Z

    .line 266
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->clear()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setIsRunning(Z)V
    .locals 0

    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    const/4 v0, -0x1

    if-gtz p1, :cond_0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 275
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to LOOP_FOREVER, or equal to LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_2

    .line 278
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object p1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getLoopCount()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 279
    :cond_1
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    goto :goto_0

    .line 281
    :cond_2
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    :goto_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 170
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 171
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isVisible:Z

    if-nez p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stopRunning()V

    goto :goto_0

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isStarted:Z

    if-eqz v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->startRunning()V

    .line 178
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isStarted:Z

    .line 140
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->resetLoopCount()V

    .line 141
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isVisible:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->startRunning()V

    :cond_0
    return-void
.end method

.method public startFromFirstFrame()V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "You cannot restart a currently running animation."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->setNextStartFromFirstFrame()V

    .line 135
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isStarted:Z

    .line 149
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stopRunning()V

    return-void
.end method
