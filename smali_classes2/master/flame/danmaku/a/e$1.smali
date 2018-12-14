.class Lmaster/flame/danmaku/a/e$1;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/a/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/e;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmaster/flame/danmaku/a/e$1;->a:Lmaster/flame/danmaku/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lmaster/flame/danmaku/a/e$1;->a:Lmaster/flame/danmaku/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lmaster/flame/danmaku/a/e;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
