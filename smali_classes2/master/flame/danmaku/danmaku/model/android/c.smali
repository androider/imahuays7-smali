.class public Lmaster/flame/danmaku/danmaku/model/android/c;
.super Ljava/lang/Object;
.source "CachingPolicy.java"


# static fields
.field public static final a:Lmaster/flame/danmaku/danmaku/model/android/c;

.field public static final b:Lmaster/flame/danmaku/danmaku/model/android/c;

.field public static final c:Lmaster/flame/danmaku/danmaku/model/android/c;


# instance fields
.field public d:I

.field public e:F

.field public f:J

.field public g:F

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    new-instance v7, Lmaster/flame/danmaku/danmaku/model/android/c;

    const/16 v1, 0x10

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    const/16 v5, 0x32

    const v6, 0x3c23d70a    # 0.01f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/c;-><init>(IFJIF)V

    sput-object v7, Lmaster/flame/danmaku/danmaku/model/android/c;->a:Lmaster/flame/danmaku/danmaku/model/android/c;

    .line 22
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/c;

    const/16 v9, 0x10

    const/high16 v10, 0x3f000000    # 0.5f

    const-wide/16 v11, -0x1

    const/16 v13, 0x32

    const v14, 0x3ba3d70a    # 0.005f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lmaster/flame/danmaku/danmaku/model/android/c;-><init>(IFJIF)V

    sput-object v0, Lmaster/flame/danmaku/danmaku/model/android/c;->b:Lmaster/flame/danmaku/danmaku/model/android/c;

    .line 23
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/c;->a:Lmaster/flame/danmaku/danmaku/model/android/c;

    sput-object v0, Lmaster/flame/danmaku/danmaku/model/android/c;->c:Lmaster/flame/danmaku/danmaku/model/android/c;

    return-void
.end method

.method public constructor <init>(IFJIF)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 48
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->d:I

    const v0, 0x3e99999a    # 0.3f

    .line 53
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->e:F

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->f:J

    const v0, 0x3c23d70a    # 0.01f

    .line 68
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->g:F

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->h:I

    const/16 v0, 0x14

    .line 75
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->i:I

    const/16 v0, 0x96

    .line 77
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->j:I

    .line 27
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->d:I

    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    const/16 p1, 0x20

    .line 32
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->d:I

    .line 34
    :cond_0
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->e:F

    .line 35
    iput-wide p3, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->f:J

    .line 36
    iput p5, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->h:I

    .line 37
    iput p6, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->g:F

    return-void
.end method
