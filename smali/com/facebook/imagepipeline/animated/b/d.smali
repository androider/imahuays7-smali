.class public Lcom/facebook/imagepipeline/animated/b/d;
.super Ljava/lang/Object;
.source "AnimatedImageCompositor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/b/d$b;,
        Lcom/facebook/imagepipeline/animated/b/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/a;

.field private final b:Lcom/facebook/imagepipeline/animated/b/d$a;

.field private final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/b/d$a;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    .line 68
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/b/d;->b:Lcom/facebook/imagepipeline/animated/b/d$a;

    .line 69
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/d;->c:Landroid/graphics/Paint;

    .line 70
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/d;->c:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/d;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/d;->c:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(ILandroid/graphics/Canvas;)I
    .locals 5

    :goto_0
    if-ltz p1, :cond_3

    .line 150
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/b/d;->a(I)Lcom/facebook/imagepipeline/animated/b/d$b;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/facebook/imagepipeline/animated/b/d$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/b/d$b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p1

    :pswitch_1
    add-int/lit8 p1, p1, 0x1

    return p1

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/d;->b:Lcom/facebook/imagepipeline/animated/b/d$a;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/animated/b/d$a;->a(I)Lcom/facebook/common/references/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v2, v3, :cond_0

    .line 159
    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/animated/b/d;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 163
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    .line 164
    throw p1

    .line 166
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/b/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Lcom/facebook/imagepipeline/animated/b/d$b;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p1

    .line 203
    iget-object v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 204
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v1, :cond_0

    .line 206
    sget-object p1, Lcom/facebook/imagepipeline/animated/b/d$b;->a:Lcom/facebook/imagepipeline/animated/b/d$b;

    return-object p1

    .line 207
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v1, :cond_2

    .line 208
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/b/d;->a(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    sget-object p1, Lcom/facebook/imagepipeline/animated/b/d$b;->b:Lcom/facebook/imagepipeline/animated/b/d$b;

    return-object p1

    .line 215
    :cond_1
    sget-object p1, Lcom/facebook/imagepipeline/animated/b/d$b;->a:Lcom/facebook/imagepipeline/animated/b/d$b;

    return-object p1

    .line 217
    :cond_2
    sget-object p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, p1, :cond_3

    .line 218
    sget-object p1, Lcom/facebook/imagepipeline/animated/b/d$b;->c:Lcom/facebook/imagepipeline/animated/b/d$b;

    return-object p1

    .line 220
    :cond_3
    sget-object p1, Lcom/facebook/imagepipeline/animated/b/d$b;->d:Lcom/facebook/imagepipeline/animated/b/d$b;

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    .locals 7

    .line 186
    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    int-to-float v2, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->c:I

    int-to-float v3, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    iget v1, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->d:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->c:I

    iget p2, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->e:I

    add-int/2addr v0, p2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/b/d;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z
    .locals 2

    .line 238
    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->c:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->d:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    .line 240
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/a;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->e:I

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    .line 241
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->f()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/animated/base/a;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    sub-int/2addr p1, v0

    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/animated/base/a;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p1

    .line 230
    iget-object v2, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/b/d;->a(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 233
    :cond_1
    iget-object v1, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v1, v2, :cond_2

    .line 234
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/b/d;->a(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 6

    .line 82
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/b/d;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 89
    invoke-direct {p0, v1, v0}, Lcom/facebook/imagepipeline/animated/b/d;->a(ILandroid/graphics/Canvas;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-ge v1, p1, :cond_4

    .line 98
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/animated/base/a;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v2

    .line 99
    iget-object v3, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 100
    sget-object v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    iget-object v4, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v5, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v4, v5, :cond_2

    .line 104
    invoke-direct {p0, v0, v2}, Lcom/facebook/imagepipeline/animated/b/d;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v4, v1, v0}, Lcom/facebook/imagepipeline/animated/base/a;->a(ILandroid/graphics/Canvas;)V

    .line 107
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/b/d;->b:Lcom/facebook/imagepipeline/animated/b/d$a;

    invoke-interface {v4, v1, p2}, Lcom/facebook/imagepipeline/animated/b/d$a;->a(ILandroid/graphics/Bitmap;)V

    .line 108
    sget-object v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v3, v4, :cond_3

    .line 109
    invoke-direct {p0, v0, v2}, Lcom/facebook/imagepipeline/animated/b/d;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_4
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/animated/base/a;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p2

    .line 114
    iget-object v1, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v1, v2, :cond_5

    .line 115
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/animated/b/d;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    .line 118
    :cond_5
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {p2, p1, v0}, Lcom/facebook/imagepipeline/animated/base/a;->a(ILandroid/graphics/Canvas;)V

    return-void
.end method
