.class public Lmaster/flame/danmaku/danmaku/model/q$a;
.super Ljava/lang/Object;
.source "SpecialDanmaku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lmaster/flame/danmaku/danmaku/model/q$b;

.field b:Lmaster/flame/danmaku/danmaku/model/q$b;

.field public c:J

.field public d:J

.field public e:J

.field f:F

.field g:F

.field final synthetic h:Lmaster/flame/danmaku/danmaku/model/q;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/q;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->h:Lmaster/flame/danmaku/danmaku/model/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 75
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->b:Lmaster/flame/danmaku/danmaku/model/q$b;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->a:Lmaster/flame/danmaku/danmaku/model/q$b;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/q$b;->a(Lmaster/flame/danmaku/danmaku/model/q$b;)F

    move-result v0

    return v0
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/q$b;Lmaster/flame/danmaku/danmaku/model/q$b;)V
    .locals 2

    .line 68
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->a:Lmaster/flame/danmaku/danmaku/model/q$b;

    .line 69
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->b:Lmaster/flame/danmaku/danmaku/model/q$b;

    .line 70
    iget v0, p2, Lmaster/flame/danmaku/danmaku/model/q$b;->a:F

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/q$b;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->f:F

    .line 71
    iget p2, p2, Lmaster/flame/danmaku/danmaku/model/q$b;->b:F

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/q$b;->b:F

    sub-float/2addr p2, p1

    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->g:F

    return-void
.end method

.method public b()[F
    .locals 3

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [F

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->a:Lmaster/flame/danmaku/danmaku/model/q$b;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/q$b;->a:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->a:Lmaster/flame/danmaku/danmaku/model/q$b;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/q$b;->b:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public c()[F
    .locals 3

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [F

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->b:Lmaster/flame/danmaku/danmaku/model/q$b;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/q$b;->a:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/q$a;->b:Lmaster/flame/danmaku/danmaku/model/q$b;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/q$b;->b:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method
