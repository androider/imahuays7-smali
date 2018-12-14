.class public Lmaster/flame/danmaku/ui/widget/a;
.super Ljava/lang/Object;
.source "DanmakuTouchHelper.java"


# instance fields
.field private final a:Landroid/view/GestureDetector;

.field private b:Lmaster/flame/danmaku/a/f;

.field private c:Landroid/graphics/RectF;

.field private d:F

.field private e:F

.field private final f:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method private constructor <init>(Lmaster/flame/danmaku/a/f;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lmaster/flame/danmaku/ui/widget/a$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/ui/widget/a$1;-><init>(Lmaster/flame/danmaku/ui/widget/a;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/a;->f:Landroid/view/GestureDetector$OnGestureListener;

    .line 68
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/a;->b:Lmaster/flame/danmaku/a/f;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/a;->c:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Landroid/view/GestureDetector;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/a;->f:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/a;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/ui/widget/a;F)F
    .locals 0

    .line 18
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/a;->d:F

    return p1
.end method

.method static synthetic a(Lmaster/flame/danmaku/ui/widget/a;)Lmaster/flame/danmaku/a/f;
    .locals 0

    .line 18
    iget-object p0, p0, Lmaster/flame/danmaku/ui/widget/a;->b:Lmaster/flame/danmaku/a/f;

    return-object p0
.end method

.method private a(FF)Lmaster/flame/danmaku/danmaku/model/l;
    .locals 3

    .line 102
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    .line 103
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 105
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/a;->b:Lmaster/flame/danmaku/a/f;

    invoke-interface {v1}, Lmaster/flame/danmaku/a/f;->getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/l;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Lmaster/flame/danmaku/ui/widget/a$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lmaster/flame/danmaku/ui/widget/a$2;-><init>(Lmaster/flame/danmaku/ui/widget/a;FFLmaster/flame/danmaku/danmaku/model/l;)V

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lmaster/flame/danmaku/ui/widget/a;FF)Lmaster/flame/danmaku/danmaku/model/l;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/ui/widget/a;->a(FF)Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Lmaster/flame/danmaku/a/f;)Lmaster/flame/danmaku/ui/widget/a;
    .locals 2

    const-class v0, Lmaster/flame/danmaku/ui/widget/a;

    monitor-enter v0

    .line 74
    :try_start_0
    new-instance v1, Lmaster/flame/danmaku/ui/widget/a;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/ui/widget/a;-><init>(Lmaster/flame/danmaku/a/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a;->b:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->getOnDanmakuClickListener()Lmaster/flame/danmaku/a/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/a;->b:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/a/f$a;->a(Lmaster/flame/danmaku/a/f;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private a(Lmaster/flame/danmaku/danmaku/model/l;Z)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a;->b:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->getOnDanmakuClickListener()Lmaster/flame/danmaku/a/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lmaster/flame/danmaku/a/f$a;->b(Lmaster/flame/danmaku/danmaku/model/l;)Z

    move-result p1

    return p1

    .line 87
    :cond_0
    invoke-interface {v0, p1}, Lmaster/flame/danmaku/a/f$a;->a(Lmaster/flame/danmaku/danmaku/model/l;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lmaster/flame/danmaku/ui/widget/a;Lmaster/flame/danmaku/danmaku/model/l;Z)Z
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/danmaku/model/l;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lmaster/flame/danmaku/ui/widget/a;F)F
    .locals 0

    .line 18
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/a;->e:F

    return p1
.end method

.method static synthetic b(Lmaster/flame/danmaku/ui/widget/a;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/a;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lmaster/flame/danmaku/ui/widget/a;)Landroid/graphics/RectF;
    .locals 0

    .line 18
    iget-object p0, p0, Lmaster/flame/danmaku/ui/widget/a;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic d(Lmaster/flame/danmaku/ui/widget/a;)F
    .locals 0

    .line 18
    iget p0, p0, Lmaster/flame/danmaku/ui/widget/a;->d:F

    return p0
.end method

.method static synthetic e(Lmaster/flame/danmaku/ui/widget/a;)F
    .locals 0

    .line 18
    iget p0, p0, Lmaster/flame/danmaku/ui/widget/a;->e:F

    return p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
