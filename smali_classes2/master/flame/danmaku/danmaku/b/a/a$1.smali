.class Lmaster/flame/danmaku/danmaku/b/a/a$1;
.super Ljava/lang/Object;
.source "DanmakuRenderer.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/b/a/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/danmaku/b/a/a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/danmaku/b/a/a;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a$1;->a:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;FIZ)Z
    .locals 8

    .line 124
    iget-byte p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->n:B

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/b/a/a$1;->a:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {p2}, Lmaster/flame/danmaku/danmaku/b/a/a;->a(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object p2

    iget-object v1, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    const/4 v4, 0x0

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/b/a/a$1;->a:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {p2}, Lmaster/flame/danmaku/danmaku/b/a/a;->f(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v5

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/b/a/a$1;->a:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {p2}, Lmaster/flame/danmaku/danmaku/b/a/a;->a(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v7

    move-object v2, p1

    move v3, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lmaster/flame/danmaku/a/b;->b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/d;->a(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
