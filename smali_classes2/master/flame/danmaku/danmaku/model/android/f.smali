.class public Lmaster/flame/danmaku/danmaku/model/android/f;
.super Ljava/lang/Object;
.source "DrawingCache.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/a/c;
.implements Lmaster/flame/danmaku/danmaku/model/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/a/c<",
        "Lmaster/flame/danmaku/danmaku/model/android/f;",
        ">;",
        "Lmaster/flame/danmaku/danmaku/model/n<",
        "Lmaster/flame/danmaku/danmaku/model/android/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lmaster/flame/danmaku/danmaku/model/android/g;

.field private b:I

.field private c:Lmaster/flame/danmaku/danmaku/model/android/f;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->b:I

    .line 17
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I

    .line 20
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/g;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/g;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/f;->h()Lmaster/flame/danmaku/danmaku/model/android/g;

    move-result-object v0

    return-object v0
.end method

.method public a(IIIZI)V
    .locals 6

    .line 25
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 26
    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/g;->a(IIIZI)V

    .line 27
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->b:I

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/f;->a(Lmaster/flame/danmaku/danmaku/model/android/f;)V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/android/f;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->c:Lmaster/flame/danmaku/danmaku/model/android/f;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->d:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 46
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/g;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->b:I

    .line 50
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 55
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 95
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/g;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 100
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/g;->f:I

    return v0
.end method

.method public declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 89
    monitor-exit p0

    throw v0
.end method

.method public h()Lmaster/flame/danmaku/danmaku/model/android/g;
    .locals 1

    .line 37
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    .line 38
    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    return-object v0
.end method

.method public i()Lmaster/flame/danmaku/danmaku/model/android/f;
    .locals 1

    .line 65
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->c:Lmaster/flame/danmaku/danmaku/model/android/f;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->d:Z

    return v0
.end method

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 84
    monitor-exit p0

    throw v0
.end method

.method public synthetic l()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/f;->i()Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v0

    return-object v0
.end method
