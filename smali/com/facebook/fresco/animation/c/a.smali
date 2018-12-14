.class public Lcom/facebook/fresco/animation/c/a;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedDrawable2.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/facebook/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/c/a$a;
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

.field private static final b:Lcom/facebook/fresco/animation/c/b;


# instance fields
.field private c:Lcom/facebook/fresco/animation/a/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/fresco/animation/d/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile e:Z

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:J

.field private k:J

.field private l:I

.field private volatile m:Lcom/facebook/fresco/animation/c/b;

.field private volatile n:Lcom/facebook/fresco/animation/c/a$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/facebook/drawee/drawable/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/facebook/fresco/animation/c/a;

    sput-object v0, Lcom/facebook/fresco/animation/c/a;->a:Ljava/lang/Class;

    .line 53
    new-instance v0, Lcom/facebook/fresco/animation/c/c;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/c/c;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/c/a;->b:Lcom/facebook/fresco/animation/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/c/a;-><init>(Lcom/facebook/fresco/animation/a/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/a/a;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/a/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x8

    .line 70
    iput-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->j:J

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->k:J

    .line 77
    sget-object v0, Lcom/facebook/fresco/animation/c/a;->b:Lcom/facebook/fresco/animation/c/b;

    iput-object v0, p0, Lcom/facebook/fresco/animation/c/a;->m:Lcom/facebook/fresco/animation/c/b;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/facebook/fresco/animation/c/a;->n:Lcom/facebook/fresco/animation/c/a$a;

    .line 90
    new-instance v0, Lcom/facebook/fresco/animation/c/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/c/a$1;-><init>(Lcom/facebook/fresco/animation/c/a;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/c/a;->p:Ljava/lang/Runnable;

    .line 107
    iput-object p1, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    .line 108
    iget-object p1, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-static {p1}, Lcom/facebook/fresco/animation/c/a;->a(Lcom/facebook/fresco/animation/a/a;)Lcom/facebook/fresco/animation/d/b;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/c/a;->d:Lcom/facebook/fresco/animation/d/b;

    return-void
.end method

.method private static a(Lcom/facebook/fresco/animation/a/a;)Lcom/facebook/fresco/animation/d/b;
    .locals 1
    .param p0    # Lcom/facebook/fresco/animation/a/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 453
    :cond_0
    new-instance v0, Lcom/facebook/fresco/animation/d/a;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/d/a;-><init>(Lcom/facebook/fresco/animation/a/d;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/c/a;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/fresco/animation/c/a;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a(J)V
    .locals 4

    .line 426
    iget-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->f:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/facebook/fresco/animation/c/a;->h:J

    .line 427
    iget-object p1, p0, Lcom/facebook/fresco/animation/c/a;->p:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->h:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/fresco/animation/c/a;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 431
    iget v0, p0, Lcom/facebook/fresco/animation/c/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/fresco/animation/c/a;->l:I

    const/4 v0, 0x2

    .line 433
    invoke-static {v0}, Lcom/facebook/common/c/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/facebook/fresco/animation/c/a;->a:Ljava/lang/Class;

    const-string v1, "Dropped a frame. Count: %s"

    iget v2, p0, Lcom/facebook/fresco/animation/c/a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c()J
    .locals 2

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->c()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v14, p0

    .line 181
    iget-object v0, v14, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_9

    iget-object v0, v14, Lcom/facebook/fresco/animation/c/a;->d:Lcom/facebook/fresco/animation/d/b;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 184
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/c/a;->c()J

    move-result-wide v12

    .line 185
    iget-boolean v0, v14, Lcom/facebook/fresco/animation/c/a;->e:Z

    if-eqz v0, :cond_1

    iget-wide v0, v14, Lcom/facebook/fresco/animation/c/a;->f:J

    sub-long v2, v12, v0

    iget-wide v0, v14, Lcom/facebook/fresco/animation/c/a;->k:J

    add-long v4, v2, v0

    move-wide v10, v4

    goto :goto_0

    :cond_1
    iget-wide v0, v14, Lcom/facebook/fresco/animation/c/a;->g:J

    const-wide/16 v2, 0x0

    .line 187
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v10, v0

    .line 190
    :goto_0
    iget-object v0, v14, Lcom/facebook/fresco/animation/c/a;->d:Lcom/facebook/fresco/animation/d/b;

    iget-wide v1, v14, Lcom/facebook/fresco/animation/c/a;->g:J

    invoke-interface {v0, v10, v11, v1, v2}, Lcom/facebook/fresco/animation/d/b;->a(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 196
    iget-object v0, v14, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 197
    iget-object v1, v14, Lcom/facebook/fresco/animation/c/a;->m:Lcom/facebook/fresco/animation/c/b;

    invoke-interface {v1, v14}, Lcom/facebook/fresco/animation/c/b;->b(Lcom/facebook/fresco/animation/c/a;)V

    const/4 v1, 0x0

    .line 198
    iput-boolean v1, v14, Lcom/facebook/fresco/animation/c/a;->e:Z

    :cond_2
    :goto_1
    move v3, v0

    goto :goto_2

    :cond_3
    if-nez v0, :cond_2

    .line 200
    iget v2, v14, Lcom/facebook/fresco/animation/c/a;->i:I

    if-eq v2, v1, :cond_2

    iget-wide v1, v14, Lcom/facebook/fresco/animation/c/a;->h:J

    cmp-long v3, v12, v1

    if-ltz v3, :cond_2

    .line 201
    iget-object v1, v14, Lcom/facebook/fresco/animation/c/a;->m:Lcom/facebook/fresco/animation/c/b;

    invoke-interface {v1, v14}, Lcom/facebook/fresco/animation/c/b;->c(Lcom/facebook/fresco/animation/c/a;)V

    goto :goto_1

    .line 206
    :goto_2
    iget-object v0, v14, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    move-object/from16 v1, p1

    invoke-interface {v0, v14, v1, v3}, Lcom/facebook/fresco/animation/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 210
    iget-object v0, v14, Lcom/facebook/fresco/animation/c/a;->m:Lcom/facebook/fresco/animation/c/b;

    invoke-interface {v0, v14, v3}, Lcom/facebook/fresco/animation/c/b;->a(Lcom/facebook/fresco/animation/c/a;I)V

    .line 211
    iput v3, v14, Lcom/facebook/fresco/animation/c/a;->i:I

    :cond_4
    if-nez v4, :cond_5

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/c/a;->b()V

    .line 221
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/c/a;->c()J

    move-result-wide v15

    .line 222
    iget-boolean v0, v14, Lcom/facebook/fresco/animation/c/a;->e:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_7

    .line 224
    iget-object v0, v14, Lcom/facebook/fresco/animation/c/a;->d:Lcom/facebook/fresco/animation/d/b;

    iget-wide v5, v14, Lcom/facebook/fresco/animation/c/a;->f:J

    sub-long v7, v15, v5

    .line 225
    invoke-interface {v0, v7, v8}, Lcom/facebook/fresco/animation/d/b;->a(J)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_6

    .line 227
    iget-wide v0, v14, Lcom/facebook/fresco/animation/c/a;->j:J

    add-long v7, v5, v0

    .line 229
    invoke-direct {v14, v7, v8}, Lcom/facebook/fresco/animation/c/a;->a(J)V

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    goto :goto_3

    :cond_6
    move-wide/from16 v19, v1

    move-wide/from16 v17, v5

    goto :goto_3

    :cond_7
    move-wide/from16 v17, v1

    move-wide/from16 v19, v17

    .line 233
    :goto_3
    iget-object v0, v14, Lcom/facebook/fresco/animation/c/a;->n:Lcom/facebook/fresco/animation/c/a$a;

    if-eqz v0, :cond_8

    .line 235
    iget-object v2, v14, Lcom/facebook/fresco/animation/c/a;->d:Lcom/facebook/fresco/animation/d/b;

    iget-boolean v5, v14, Lcom/facebook/fresco/animation/c/a;->e:Z

    iget-wide v6, v14, Lcom/facebook/fresco/animation/c/a;->f:J

    iget-wide v8, v14, Lcom/facebook/fresco/animation/c/a;->g:J

    move-object v1, v14

    move-wide/from16 v21, v8

    move-wide v8, v10

    move-wide/from16 v23, v10

    move-wide/from16 v10, v21

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    invoke-interface/range {v0 .. v19}, Lcom/facebook/fresco/animation/c/a$a;->a(Lcom/facebook/fresco/animation/c/a;Lcom/facebook/fresco/animation/d/b;IZZJJJJJJJ)V

    move-wide/from16 v4, v23

    move-object/from16 v0, p0

    goto :goto_4

    :cond_8
    move-wide v4, v10

    move-object v0, v14

    .line 249
    :goto_4
    iput-wide v4, v0, Lcom/facebook/fresco/animation/c/a;->g:J

    return-void

    :cond_9
    :goto_5
    move-object v0, v14

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    if-nez v0, :cond_0

    .line 122
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->b()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->a()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/c/a;->e:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/a/a;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 6

    .line 469
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/c/a;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 474
    :cond_0
    iget-wide v2, p0, Lcom/facebook/fresco/animation/c/a;->g:J

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    .line 475
    iput-wide v4, p0, Lcom/facebook/fresco/animation/c/a;->g:J

    .line 476
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/c/a;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->o:Lcom/facebook/drawee/drawable/d;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/facebook/drawee/drawable/d;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/d;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/c/a;->o:Lcom/facebook/drawee/drawable/d;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->o:Lcom/facebook/drawee/drawable/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/d;->a(I)V

    .line 258
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/a/a;->a(I)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->o:Lcom/facebook/drawee/drawable/d;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/facebook/drawee/drawable/d;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/d;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/c/a;->o:Lcom/facebook/drawee/drawable/d;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->o:Lcom/facebook/drawee/drawable/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/d;->a(Landroid/graphics/ColorFilter;)V

    .line 269
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/a/a;->a(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/c/a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->c:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->d()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/fresco/animation/c/a;->e:Z

    .line 136
    invoke-direct {p0}, Lcom/facebook/fresco/animation/c/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->f:J

    .line 137
    iget-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->f:J

    iput-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->h:J

    const-wide/16 v0, -0x1

    .line 138
    iput-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->g:J

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/facebook/fresco/animation/c/a;->i:I

    .line 140
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/c/a;->invalidateSelf()V

    .line 141
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->m:Lcom/facebook/fresco/animation/c/b;

    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/c/b;->a(Lcom/facebook/fresco/animation/c/a;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/c/a;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/c/a;->e:Z

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->f:J

    .line 154
    iget-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->f:J

    iput-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->h:J

    const-wide/16 v0, -0x1

    .line 155
    iput-wide v0, p0, Lcom/facebook/fresco/animation/c/a;->g:J

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/facebook/fresco/animation/c/a;->i:I

    .line 157
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/animation/c/a;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/facebook/fresco/animation/c/a;->m:Lcom/facebook/fresco/animation/c/b;

    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/c/b;->b(Lcom/facebook/fresco/animation/c/a;)V

    return-void
.end method
