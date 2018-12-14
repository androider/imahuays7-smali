.class Lmaster/flame/danmaku/a/c$b;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/a/c;


# direct methods
.method private constructor <init>(Lmaster/flame/danmaku/a/c;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lmaster/flame/danmaku/a/c$b;->a:Lmaster/flame/danmaku/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/a/c;Lmaster/flame/danmaku/a/c$1;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/a/c$b;-><init>(Lmaster/flame/danmaku/a/c;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 466
    iget-object p1, p0, Lmaster/flame/danmaku/a/c$b;->a:Lmaster/flame/danmaku/a/c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    return-void
.end method
