.class public Lin/srain/cube/views/ptr/PtrFrameLayout;
.super Landroid/view/ViewGroup;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/PtrFrameLayout$b;,
        Lin/srain/cube/views/ptr/PtrFrameLayout$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static e:I = 0x1

.field private static f:B = 0x1t

.field private static g:B = 0x2t

.field private static h:B = 0x4t

.field private static i:B = 0x8t

.field private static j:B = 0x3t


# instance fields
.field private A:Lin/srain/cube/views/ptr/e;

.field private B:I

.field private C:J

.field private D:Lin/srain/cube/views/ptr/a/a;

.field private E:Z

.field private F:Ljava/lang/Runnable;

.field protected final b:Ljava/lang/String;

.field protected c:Landroid/view/View;

.field private d:B

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Lin/srain/cube/views/ptr/d;

.field private s:Lin/srain/cube/views/ptr/b;

.field private t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

.field private u:I

.field private v:I

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 21
    iput-byte p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ptr-frame-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    add-int/2addr v1, p3

    sput v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    .line 38
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    const/16 v1, 0xc8

    .line 40
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    const/16 v1, 0x3e8

    .line 41
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    .line 42
    iput-boolean p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:Z

    .line 43
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    .line 45
    invoke-static {}, Lin/srain/cube/views/ptr/d;->b()Lin/srain/cube/views/ptr/d;

    move-result-object p3

    iput-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    .line 51
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Z

    .line 52
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    .line 55
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Z

    const/16 p3, 0x1f4

    .line 61
    iput p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:J

    .line 64
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    .line 65
    new-instance p3, Lin/srain/cube/views/ptr/PtrFrameLayout$1;

    invoke-direct {p3, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$1;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    iput-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Ljava/lang/Runnable;

    .line 83
    new-instance p3, Lin/srain/cube/views/ptr/a/a;

    invoke-direct {p3}, Lin/srain/cube/views/ptr/a/a;-><init>()V

    iput-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    .line 85
    sget-object p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout:[I

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_header:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    .line 89
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_content:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    .line 91
    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    sget p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_resistance:I

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->b()F

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Lin/srain/cube/views/ptr/a/a;->a(F)V

    .line 94
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_close:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    .line 95
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_close_header:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    .line 97
    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p2}, Lin/srain/cube/views/ptr/a/a;->f()F

    move-result p2

    .line 98
    sget p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_ratio_of_header_height_to_refresh:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 99
    iget-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p3, p2}, Lin/srain/cube/views/ptr/a/a;->b(F)V

    .line 101
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_keep_header_when_refresh:I

    iget-boolean p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:Z

    .line 103
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_pull_to_fresh:I

    iget-boolean p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    :cond_0
    new-instance p1, Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-direct {p1, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    .line 109
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:I

    return-void
.end method

.method private a(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 349
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    sget-boolean p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "has reached the top"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->k()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr p1, v0

    .line 359
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    sget-boolean p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz p1, :cond_2

    .line 361
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "over top"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 366
    :cond_3
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->b(I)V

    .line 367
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->j()I

    move-result v0

    sub-int/2addr p1, v0

    .line 368
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 379
    iget-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    .line 381
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->t()V

    .line 385
    :cond_1
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->n()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    iget-byte v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    if-eq v2, v1, :cond_3

    :cond_2
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-byte v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    if-ne v2, v4, :cond_4

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 388
    :cond_3
    iput-byte v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 389
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {v2, p0}, Lin/srain/cube/views/ptr/d;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 390
    sget-boolean v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v2, :cond_4

    .line 391
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v6, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    new-array v7, v1, [Ljava/lang/Object;

    iget v8, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2, v6, v7}, Lin/srain/cube/views/ptr/b/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :cond_4
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 397
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->p()Z

    if-eqz v0, :cond_5

    .line 401
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->u()V

    .line 406
    :cond_5
    iget-byte v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    if-ne v2, v5, :cond_7

    if-eqz v0, :cond_6

    .line 408
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->e()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->s()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 410
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->n()Z

    .line 413
    :cond_6
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->s()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->t()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 414
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->n()Z

    .line 418
    :cond_7
    sget-boolean v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v2, :cond_8

    .line 419
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v6, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v3}, Lin/srain/cube/views/ptr/a/a;->k()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/a/a;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    const/4 v1, 0x3

    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v2, v6, v7}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :cond_8
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 424
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()Z

    move-result v1

    if-nez v1, :cond_9

    .line 425
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 427
    :cond_9
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->invalidate()V

    .line 429
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/d;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 430
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    iget-byte v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1, p0, v0, v1, v2}, Lin/srain/cube/views/ptr/d;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V

    .line 432
    :cond_a
    iget-byte p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p0, v0, p1, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(ZBLin/srain/cube/views/ptr/a/a;)V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 3

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 219
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 221
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, v1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result p3

    .line 224
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->q()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c(Z)V

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lin/srain/cube/views/ptr/a/a;
    .locals 0

    .line 17
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 445
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->n()Z

    .line 447
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 449
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 452
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->v()I

    move-result v0

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    invoke-virtual {p1, v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(II)V

    goto :goto_0

    .line 457
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->k()V

    goto :goto_0

    .line 460
    :cond_1
    iget-byte p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 461
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c(Z)V

    goto :goto_0

    .line 463
    :cond_2
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->m()V

    :cond_3
    :goto_0
    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 643
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Lin/srain/cube/views/ptr/e;

    if-eqz p1, :cond_1

    .line 644
    sget-boolean p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz p1, :cond_0

    .line 645
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "notifyUIRefreshComplete mRefreshCompleteHook run."

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_0
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Lin/srain/cube/views/ptr/e;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/e;->a()V

    return-void

    .line 651
    :cond_1
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 652
    sget-boolean p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz p1, :cond_2

    .line 653
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "PtrUIHandler: onUIRefreshComplete"

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_2
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/d;->d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 657
    :cond_3
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/a/a;->d()V

    .line 658
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->l()V

    .line 659
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->p()Z

    return-void
.end method

.method private i()V
    .locals 15

    .line 233
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->k()I

    move-result v0

    .line 234
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v1

    .line 235
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v2

    .line 237
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 239
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    .line 240
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v10, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    sub-int/2addr v3, v10

    .line 241
    iget-object v10, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v9

    .line 242
    iget-object v11, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    .line 243
    iget-object v12, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v12, v9, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 244
    sget-boolean v12, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v12, :cond_0

    .line 245
    iget-object v12, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v13, "onLayout header: %s %s %s %s"

    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v4

    invoke-static {v12, v13, v14}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_0
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 249
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 252
    :cond_1
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v9

    .line 254
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 255
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    .line 256
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 257
    sget-boolean v9, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v9, :cond_2

    .line 258
    iget-object v9, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v10, "onLayout content: %s %s %s %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v9, v10, v7}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_2
    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void
.end method

.method private j()V
    .locals 3

    .line 491
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    const/4 v1, 0x0

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    invoke-virtual {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(II)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 0

    .line 500
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->j()V

    return-void
.end method

.method private l()V
    .locals 0

    .line 507
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->j()V

    return-void
.end method

.method private m()V
    .locals 0

    .line 514
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->j()V

    return-void
.end method

.method private n()Z
    .locals 3

    .line 518
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 523
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    .line 524
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 525
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->o()V

    :cond_3
    return v1
.end method

.method private o()V
    .locals 2

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:J

    .line 532
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/d;->c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 534
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshBegin"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lin/srain/cube/views/ptr/b;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lin/srain/cube/views/ptr/b;

    invoke-interface {v0, p0}, Lin/srain/cube/views/ptr/b;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    :cond_1
    return-void
.end method

.method private p()Z
    .locals 2

    .line 547
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/d;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 550
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIReset"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 554
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 555
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->r()V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private q()V
    .locals 5

    const/4 v0, 0x4

    .line 619
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 622
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b(Lin/srain/cube/views/ptr/PtrFrameLayout$b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-static {v4}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b(Lin/srain/cube/views/ptr/PtrFrameLayout$b;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 631
    :cond_1
    invoke-direct {p0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c(Z)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 672
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    return-void
.end method

.method private s()Z
    .locals 2

    .line 702
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:B

    and-int/2addr v0, v1

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private t()V
    .locals 10

    .line 912
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "send cancel event"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    return-void

    .line 920
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Landroid/view/MotionEvent;

    .line 921
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    move-wide v3, v7

    move v7, v9

    move v8, v0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 922
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private u()V
    .locals 9

    .line 926
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "send down event"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Landroid/view/MotionEvent;

    .line 930
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 931
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 562
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "call onRelease after scroll abort"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 566
    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    :cond_1
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/c;)V
    .locals 1

    .line 776
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-static {v0, p1}, Lin/srain/cube/views/ptr/d;->a(Lin/srain/cube/views/ptr/d;Lin/srain/cube/views/ptr/c;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 745
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Z

    return-void
.end method

.method protected a(ZBLin/srain/cube/views/ptr/a/a;)V
    .locals 0

    return-void
.end method

.method public a(ZI)V
    .locals 5

    .line 677
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 681
    :cond_0
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    if-eqz p1, :cond_1

    sget-byte v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:B

    goto :goto_0

    :cond_1
    sget-byte v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:B

    :goto_0
    or-int/2addr v0, v2

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    const/4 v0, 0x2

    .line 683
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 684
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lin/srain/cube/views/ptr/d;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/d;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 686
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Lin/srain/cube/views/ptr/b/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    :cond_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/a/a;->g()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(II)V

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 692
    iput-byte p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 693
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->o()V

    :cond_3
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 265
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 2

    .line 571
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "call onRelease after scroll finish"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 575
    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 8

    .line 593
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "refreshComplete"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Lin/srain/cube/views/ptr/e;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Lin/srain/cube/views/ptr/e;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/e;->b()V

    .line 601
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:J

    sub-long v6, v2, v4

    sub-long v2, v0, v6

    long-to-int v0, v2

    if-gtz v0, :cond_3

    .line 603
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "performRefreshComplete at once"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_2
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->q()V

    goto :goto_0

    .line 608
    :cond_3
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 609
    sget-boolean v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v1, :cond_4

    .line 610
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "performRefreshComplete after delay: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 893
    instance-of p1, p1, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    return p1
.end method

.method public d()V
    .locals 2

    .line 663
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(ZI)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 270
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 306
    :pswitch_0
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Landroid/view/MotionEvent;

    .line 307
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lin/srain/cube/views/ptr/a/a;->b(FF)V

    .line 308
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->h()F

    move-result v0

    .line 309
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v3}, Lin/srain/cube/views/ptr/a/a;->i()F

    move-result v3

    .line 311
    iget-boolean v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Z

    if-nez v4, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 312
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iput-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Z

    .line 316
    :cond_1
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Z

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v4, v0, 0x1

    .line 322
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v5}, Lin/srain/cube/views/ptr/a/a;->m()Z

    move-result v5

    .line 324
    sget-boolean v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v6, :cond_5

    .line 325
    iget-object v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lin/srain/cube/views/ptr/b;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lin/srain/cube/views/ptr/b;

    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    iget-object v8, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-interface {v6, p0, v7, v8}, Lin/srain/cube/views/ptr/b;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 326
    :goto_1
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v8, "ACTION_MOVE: offsetY:%s, currentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v1

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/a/a;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    const/4 v1, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v1, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v1, 0x5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-static {v7, v8, v9}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 330
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lin/srain/cube/views/ptr/b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lin/srain/cube/views/ptr/b;

    iget-object v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-interface {v1, p0, v6, v7}, Lin/srain/cube/views/ptr/b;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 331
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    if-eqz v4, :cond_7

    if-nez v5, :cond_8

    :cond_7
    if-eqz v0, :cond_c

    .line 335
    :cond_8
    invoke-direct {p0, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    return v2

    .line 277
    :pswitch_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->c()V

    .line 278
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 279
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v3, "call onRelease when user release"

    invoke-static {v0, v3}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_9
    invoke-direct {p0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    .line 283
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 284
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->t()V

    return v2

    .line 287
    :cond_a
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 289
    :cond_b
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 293
    :pswitch_2
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    .line 294
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lin/srain/cube/views/ptr/a/a;->a(FF)V

    .line 296
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a()V

    .line 298
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Z

    .line 302
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    return v2

    .line 339
    :cond_c
    :goto_2
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 271
    :cond_d
    :goto_3
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()Z
    .locals 2

    .line 698
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 706
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    .line 723
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 898
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 908
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 903
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-direct {v0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 768
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    return-object v0
.end method

.method public getDurationToClose()F
    .locals 1

    .line 802
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .line 816
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 440
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 875
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .line 848
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->v()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .line 833
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->g()I

    move-result v0

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .line 843
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->f()F

    move-result v0

    return v0
.end method

.method public getResistance()F
    .locals 1

    .line 793
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->b()F

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 174
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(Lin/srain/cube/views/ptr/PtrFrameLayout$b;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 115
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PtrFrameLayout only can host 2 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    .line 119
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v0, :cond_1

    .line 120
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    .line 122
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v0, :cond_2

    .line 123
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 127
    :cond_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v0, :cond_c

    .line 129
    :cond_3
    invoke-virtual {p0, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    instance-of v2, v0, Lin/srain/cube/views/ptr/c;

    if-eqz v2, :cond_4

    .line 132
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    .line 133
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 134
    :cond_4
    instance-of v2, v1, Lin/srain/cube/views/ptr/c;

    if-eqz v2, :cond_5

    .line 135
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    .line 136
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 139
    :cond_5
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v2, :cond_6

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v2, :cond_6

    .line 140
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    .line 141
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 145
    :cond_6
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v2, :cond_8

    .line 146
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-ne v2, v0, :cond_7

    move-object v0, v1

    :cond_7
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    goto :goto_0

    .line 148
    :cond_8
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-ne v2, v0, :cond_9

    move-object v0, v1

    :cond_9
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    :cond_a
    if-ne v0, v3, :cond_b

    .line 154
    invoke-virtual {p0, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 156
    :cond_b
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    const v1, -0x9a00

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    .line 165
    :cond_c
    :goto_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 166
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 168
    :cond_d
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->i()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 14

    move-object v6, p0

    .line 185
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 187
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "onMeasure frame: width: %s, height: %s, padding: %s %s %s %s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingRight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingBottom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_0
    iget-object v0, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 195
    iget-object v1, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 196
    iget-object v0, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    iget-object v1, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    .line 198
    iget-object v0, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    iget v1, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/a/a;->c(I)V

    .line 201
    :cond_1
    iget-object v0, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    move v1, p1

    move/from16 v2, p2

    invoke-direct {v6, v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/View;II)V

    .line 203
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 205
    iget-object v1, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "onMeasure content, width: %s, height: %s, margin: %s %s %s %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "onMeasure, currentPos: %s, lastPos: %s, top: %s"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v3}, Lin/srain/cube/views/ptr/a/a;->k()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    iget-object v3, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v3}, Lin/srain/cube/views/ptr/a/a;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    iget-object v3, v6, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setDurationToClose(I)V
    .locals 0

    .line 811
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0

    .line 825
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 716
    iget p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:B

    or-int/2addr p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    goto :goto_0

    .line 718
    :cond_0
    iget p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:B

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    :goto_0
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3

    .line 879
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 880
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    .line 882
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 884
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(II)V

    .line 885
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    :cond_1
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    .line 888
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0

    .line 862
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:Z

    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0

    .line 754
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1

    .line 853
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->d(I)V

    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1

    .line 838
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->a(I)V

    return-void
.end method

.method public setPinContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 733
    iget p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:B

    or-int/2addr p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    goto :goto_0

    .line 735
    :cond_0
    iget p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    sget-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:B

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    :goto_0
    return-void
.end method

.method public setPtrHandler(Lin/srain/cube/views/ptr/b;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lin/srain/cube/views/ptr/b;

    return-void
.end method

.method public setPtrIndicator(Lin/srain/cube/views/ptr/a/a;)V
    .locals 1

    .line 785
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    if-eq v0, p1, :cond_0

    .line 786
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/a/a;->a(Lin/srain/cube/views/ptr/a/a;)V

    .line 788
    :cond_0
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0

    .line 870
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1

    .line 829
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->b(F)V

    return-void
.end method

.method public setRefreshCompleteHook(Lin/srain/cube/views/ptr/e;)V
    .locals 1

    .line 475
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Lin/srain/cube/views/ptr/e;

    .line 476
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$2;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setResistance(F)V
    .locals 1

    .line 797
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->a(F)V

    return-void
.end method
