.class public abstract Lmaster/flame/danmaku/danmaku/a/a;
.super Ljava/lang/Object;
.source "BaseDanmakuParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/a/a$a;
    }
.end annotation


# instance fields
.field protected mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private mDanmakus:Lmaster/flame/danmaku/danmaku/model/l;

.field protected mDataSource:Lmaster/flame/danmaku/danmaku/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/a/b<",
            "*>;"
        }
    .end annotation
.end field

.field protected mDisp:Lmaster/flame/danmaku/danmaku/model/m;

.field protected mDispDensity:F

.field protected mDispHeight:I

.field protected mDispWidth:I

.field protected mListener:Lmaster/flame/danmaku/danmaku/a/a$a;

.field protected mScaledDensity:F

.field protected mTimer:Lmaster/flame/danmaku/danmaku/model/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDanmakus()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 1

    .line 91
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/l;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/l;

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->b()V

    .line 94
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/a/a;->parse()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/l;

    .line 95
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/a/a;->releaseDataSource()V

    .line 96
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->c()V

    .line 97
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/l;

    return-object v0
.end method

.method public getDisplayer()Lmaster/flame/danmaku/danmaku/model/m;
    .locals 1

    .line 60
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDisp:Lmaster/flame/danmaku/danmaku/model/m;

    return-object v0
.end method

.method public getTimer()Lmaster/flame/danmaku/danmaku/model/f;
    .locals 1

    .line 87
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mTimer:Lmaster/flame/danmaku/danmaku/model/f;

    return-object v0
.end method

.method protected getViewportSizeFactor()F
    .locals 2

    .line 73
    iget v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDispDensity:F

    const v1, 0x3f19999a    # 0.6f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public load(Lmaster/flame/danmaku/danmaku/a/b;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/a/b<",
            "*>;)",
            "Lmaster/flame/danmaku/danmaku/a/a;"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDataSource:Lmaster/flame/danmaku/danmaku/a/b;

    return-object p0
.end method

.method protected abstract parse()Lmaster/flame/danmaku/danmaku/model/l;
.end method

.method public release()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/a/a;->releaseDataSource()V

    return-void
.end method

.method protected releaseDataSource()V
    .locals 1

    .line 101
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDataSource:Lmaster/flame/danmaku/danmaku/a/b;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDataSource:Lmaster/flame/danmaku/danmaku/a/b;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/a/b;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDataSource:Lmaster/flame/danmaku/danmaku/a/b;

    return-void
.end method

.method public setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 0

    .line 113
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method public setDisplayer(Lmaster/flame/danmaku/danmaku/model/m;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 3

    .line 49
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDisp:Lmaster/flame/danmaku/danmaku/model/m;

    .line 50
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->e()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDispWidth:I

    .line 51
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDispHeight:I

    .line 52
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->g()F

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDispDensity:F

    .line 53
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->i()F

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mScaledDensity:F

    .line 54
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget v0, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDispWidth:I

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mDispHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/a/a;->getViewportSizeFactor()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(FFF)Z

    .line 55
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->c()V

    return-object p0
.end method

.method public setListener(Lmaster/flame/danmaku/danmaku/a/a$a;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 0

    .line 64
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mListener:Lmaster/flame/danmaku/danmaku/a/a$a;

    return-object p0
.end method

.method public setTimer(Lmaster/flame/danmaku/danmaku/model/f;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 0

    .line 82
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a;->mTimer:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method
