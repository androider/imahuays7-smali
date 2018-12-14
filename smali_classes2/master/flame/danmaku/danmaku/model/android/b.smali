.class public abstract Lmaster/flame/danmaku/danmaku/model/android/b;
.super Ljava/lang/Object;
.source "BaseCacheStuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/b$a;
    }
.end annotation


# instance fields
.field protected a:Lmaster/flame/danmaku/danmaku/model/android/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/android/b$a;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/b;->a:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    return-void
.end method

.method public abstract a(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFZLmaster/flame/danmaku/danmaku/model/android/a$a;)V
.end method

.method public abstract a(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/b;->a:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/b;->a:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/b$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    :cond_0
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Landroid/text/TextPaint;)Z
    .locals 0

    .line 51
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/g;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1, p2, p3, p4, p5}, Lmaster/flame/danmaku/danmaku/model/android/g;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/b;->a:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/b;->a:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/b$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method
