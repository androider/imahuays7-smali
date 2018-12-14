.class public Lcom/facebook/fresco/animation/b/a;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.java"

# interfaces
.implements Lcom/facebook/fresco/animation/a/a;
.implements Lcom/facebook/fresco/animation/a/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/imagepipeline/b/f;

.field private final c:Lcom/facebook/fresco/animation/b/b;

.field private final d:Lcom/facebook/fresco/animation/a/d;

.field private final e:Lcom/facebook/fresco/animation/b/c;

.field private final f:Lcom/facebook/fresco/animation/b/b/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/facebook/fresco/animation/b/b/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Bitmap$Config;

.field private m:Lcom/facebook/fresco/animation/b/a$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lcom/facebook/fresco/animation/b/a;

    sput-object v0, Lcom/facebook/fresco/animation/b/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/b/f;Lcom/facebook/fresco/animation/b/b;Lcom/facebook/fresco/animation/a/d;Lcom/facebook/fresco/animation/b/c;Lcom/facebook/fresco/animation/b/b/a;Lcom/facebook/fresco/animation/b/b/b;)V
    .locals 1
    .param p5    # Lcom/facebook/fresco/animation/b/b/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/fresco/animation/b/b/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/fresco/animation/b/a;->l:Landroid/graphics/Bitmap$Config;

    .line 117
    iput-object p1, p0, Lcom/facebook/fresco/animation/b/a;->b:Lcom/facebook/imagepipeline/b/f;

    .line 118
    iput-object p2, p0, Lcom/facebook/fresco/animation/b/a;->c:Lcom/facebook/fresco/animation/b/b;

    .line 119
    iput-object p3, p0, Lcom/facebook/fresco/animation/b/a;->d:Lcom/facebook/fresco/animation/a/d;

    .line 120
    iput-object p4, p0, Lcom/facebook/fresco/animation/b/a;->e:Lcom/facebook/fresco/animation/b/c;

    .line 121
    iput-object p5, p0, Lcom/facebook/fresco/animation/b/a;->f:Lcom/facebook/fresco/animation/b/b/a;

    .line 122
    iput-object p6, p0, Lcom/facebook/fresco/animation/b/a;->g:Lcom/facebook/fresco/animation/b/b/b;

    .line 124
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/b/a;->h:Landroid/graphics/Paint;

    .line 125
    invoke-direct {p0}, Lcom/facebook/fresco/animation/b/a;->g()V

    return-void
.end method

.method private a(ILcom/facebook/common/references/a;)Z
    .locals 2
    .param p2    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 308
    invoke-static {p2}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->e:Lcom/facebook/fresco/animation/b/c;

    .line 313
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcom/facebook/fresco/animation/b/c;->a(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 315
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    :cond_1
    return p1
.end method

.method private a(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z
    .locals 4
    .param p2    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Canvas;",
            "I)Z"
        }
    .end annotation

    .line 337
    invoke-static {p2}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/facebook/fresco/animation/b/a;->h:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/fresco/animation/b/a;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/facebook/fresco/animation/b/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    const/4 p3, 0x3

    if-eq p4, p3, :cond_2

    .line 349
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a;->c:Lcom/facebook/fresco/animation/b/b;

    invoke-interface {p3, p1, p2, p4}, Lcom/facebook/fresco/animation/b/b;->a(ILcom/facebook/common/references/a;I)V

    .line 355
    :cond_2
    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a;->m:Lcom/facebook/fresco/animation/b/a$a;

    if-eqz p2, :cond_3

    .line 356
    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a;->m:Lcom/facebook/fresco/animation/b/a$a;

    invoke-interface {p2, p0, p1, p4}, Lcom/facebook/fresco/animation/b/a$a;->a(Lcom/facebook/fresco/animation/b/a;II)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private a(Landroid/graphics/Canvas;II)Z
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch p3, :pswitch_data_0

    .line 231
    invoke-static {v5}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return v4

    .line 223
    :pswitch_0
    :try_start_0
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a;->c:Lcom/facebook/fresco/animation/b/b;

    invoke-interface {p3, p2}, Lcom/facebook/fresco/animation/b/b;->b(I)Lcom/facebook/common/references/a;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    invoke-direct {p0, p2, p3, p1, v1}, Lcom/facebook/fresco/animation/b/a;->a(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, -0x1

    goto :goto_1

    .line 208
    :pswitch_1
    :try_start_2
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a;->b:Lcom/facebook/imagepipeline/b/f;

    iget v6, p0, Lcom/facebook/fresco/animation/b/a;->j:I

    iget v7, p0, Lcom/facebook/fresco/animation/b/a;->k:I

    iget-object v8, p0, Lcom/facebook/fresco/animation/b/a;->l:Landroid/graphics/Bitmap$Config;

    .line 209
    invoke-virtual {p3, v6, v7, v8}, Lcom/facebook/imagepipeline/b/f;->b(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    :try_start_3
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/b/a;->a(ILcom/facebook/common/references/a;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/facebook/fresco/animation/b/a;->a(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 213
    :try_start_4
    sget-object p2, Lcom/facebook/fresco/animation/b/a;->a:Ljava/lang/Class;

    const-string p3, "Failed to create frame bitmap"

    invoke-static {p2, p3, p1}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    invoke-static {v5}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return v4

    .line 198
    :pswitch_2
    :try_start_5
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a;->c:Lcom/facebook/fresco/animation/b/b;

    iget v1, p0, Lcom/facebook/fresco/animation/b/a;->j:I

    iget v6, p0, Lcom/facebook/fresco/animation/b/a;->k:I

    .line 199
    invoke-interface {p3, p2, v1, v6}, Lcom/facebook/fresco/animation/b/b;->a(III)Lcom/facebook/common/references/a;

    move-result-object p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 201
    :try_start_6
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/b/a;->a(ILcom/facebook/common/references/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-direct {p0, p2, p3, p1, v3}, Lcom/facebook/fresco/animation/b/a;->a(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    const/4 v1, 0x2

    goto :goto_1

    .line 192
    :pswitch_3
    :try_start_7
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a;->c:Lcom/facebook/fresco/animation/b/b;

    invoke-interface {p3, p2}, Lcom/facebook/fresco/animation/b/b;->a(I)Lcom/facebook/common/references/a;

    move-result-object p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 193
    :try_start_8
    invoke-direct {p0, p2, p3, p1, v4}, Lcom/facebook/fresco/animation/b/a;->a(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v1, 0x1

    .line 231
    :goto_1
    invoke-static {p3}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    if-nez v0, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 237
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/fresco/animation/b/a;->a(Landroid/graphics/Canvas;II)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v0

    :catchall_0
    move-exception p1

    move-object v5, p3

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 231
    :goto_3
    invoke-static {v5}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 232
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->e:Lcom/facebook/fresco/animation/b/c;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/b/c;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/b/a;->j:I

    .line 286
    iget v0, p0, Lcom/facebook/fresco/animation/b/a;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/fresco/animation/b/a;->j:I

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->e:Lcom/facebook/fresco/animation/b/c;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/b/c;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/b/a;->k:I

    .line 291
    iget v0, p0, Lcom/facebook/fresco/animation/b/a;->k:I

    if-ne v0, v1, :cond_3

    .line 292
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/facebook/fresco/animation/b/a;->k:I

    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/facebook/fresco/animation/b/a;->j:I

    return v0
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 243
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 248
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 253
    iput-object p1, p0, Lcom/facebook/fresco/animation/b/a;->i:Landroid/graphics/Rect;

    .line 254
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->e:Lcom/facebook/fresco/animation/b/c;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/b/c;->a(Landroid/graphics/Rect;)V

    .line 255
    invoke-direct {p0}, Lcom/facebook/fresco/animation/b/a;->g()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/a;->m:Lcom/facebook/fresco/animation/b/a$a;

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/a;->m:Lcom/facebook/fresco/animation/b/a$a;

    invoke-interface {p1, p0, p3}, Lcom/facebook/fresco/animation/b/a$a;->a(Lcom/facebook/fresco/animation/b/a;I)V

    :cond_0
    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/fresco/animation/b/a;->a(Landroid/graphics/Canvas;II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 168
    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a;->m:Lcom/facebook/fresco/animation/b/a$a;

    if-eqz p2, :cond_1

    .line 169
    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a;->m:Lcom/facebook/fresco/animation/b/a$a;

    invoke-interface {p2, p0, p3}, Lcom/facebook/fresco/animation/b/a$a;->b(Lcom/facebook/fresco/animation/b/a;I)V

    .line 173
    :cond_1
    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a;->f:Lcom/facebook/fresco/animation/b/b/a;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a;->g:Lcom/facebook/fresco/animation/b/b/b;

    if-eqz p2, :cond_2

    .line 174
    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a;->f:Lcom/facebook/fresco/animation/b/b/a;

    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->g:Lcom/facebook/fresco/animation/b/b/b;

    iget-object v1, p0, Lcom/facebook/fresco/animation/b/a;->c:Lcom/facebook/fresco/animation/b/b;

    invoke-interface {p2, v0, v1, p0, p3}, Lcom/facebook/fresco/animation/b/b/a;->a(Lcom/facebook/fresco/animation/b/b/b;Lcom/facebook/fresco/animation/b/b;Lcom/facebook/fresco/animation/a/a;I)V

    :cond_2
    return p1
.end method

.method public b()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/facebook/fresco/animation/b/a;->k:I

    return v0
.end method

.method public b(I)I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->d:Lcom/facebook/fresco/animation/a/d;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/a/d;->b(I)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->c:Lcom/facebook/fresco/animation/b/b;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/b/b;->a()V

    return-void
.end method

.method public d()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->d:Lcom/facebook/fresco/animation/a/d;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/d;->d()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a;->d:Lcom/facebook/fresco/animation/a/d;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/d;->e()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 0

    .line 280
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/b/a;->c()V

    return-void
.end method
