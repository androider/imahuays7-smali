.class Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;
.super Lmaster/flame/danmaku/danmaku/a/a;
.source "FakeDanmakuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;

.field private final b:Lmaster/flame/danmaku/danmaku/a/a;

.field private final c:J

.field private final d:J

.field private e:F

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;Lmaster/flame/danmaku/danmaku/a/a;JJ)V
    .locals 0

    .line 36
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->a:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/a/a;-><init>()V

    .line 37
    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->b:Lmaster/flame/danmaku/danmaku/a/a;

    .line 38
    iput-wide p3, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->c:J

    .line 39
    iput-wide p5, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->d:J

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->c:J

    return-wide v0
.end method

.method static synthetic b(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->d:J

    return-wide v0
.end method

.method static synthetic c(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic d(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic e(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)F
    .locals 0

    .line 29
    iget p0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->e:F

    return p0
.end method

.method static synthetic f(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)F
    .locals 0

    .line 29
    iget p0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->f:F

    return p0
.end method

.method static synthetic g(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic h(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic i(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    .line 29
    iget-object p0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mTimer:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method

.method static synthetic j(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method


# virtual methods
.method protected getViewportSizeFactor()F
    .locals 4

    .line 119
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->g:I

    int-to-long v0, v0

    const-wide/16 v2, 0xed8

    mul-long v0, v0, v2

    long-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float/2addr v0, v1

    .line 121
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    long-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1
.end method

.method protected parse()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 6

    .line 44
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    .line 47
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->b:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/a/a;->getDanmakus()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v1

    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->c:J

    iget-wide v4, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->d:J

    invoke-interface {v1, v2, v3, v4, v5}, Lmaster/flame/danmaku/danmaku/model/l;->a(JJ)Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->b:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/a/a;->getDanmakus()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 54
    :cond_0
    new-instance v2, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;

    invoke-direct {v2, p0, v0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;-><init>(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;Lmaster/flame/danmaku/danmaku/model/l;)V

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/danmaku/model/l;->b(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    return-object v0
.end method

.method public setDisplayer(Lmaster/flame/danmaku/danmaku/model/m;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/a/a;->setDisplayer(Lmaster/flame/danmaku/danmaku/model/m;)Lmaster/flame/danmaku/danmaku/a/a;

    .line 106
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->b:Lmaster/flame/danmaku/danmaku/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->b:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/a/a;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mDispWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->b:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/a/a;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/m;->e()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->e:F

    .line 110
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->mDispHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->b:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/a/a;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->f:F

    .line 111
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->g:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 112
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->e()I

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->g:I

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p0
.end method
