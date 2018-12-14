.class Lmaster/flame/danmaku/a/a$1;
.super Ljava/lang/Object;
.source "CacheManagingDrawTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/a;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/a/a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/a;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$1;->a:Lmaster/flame/danmaku/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1097
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$1;->a:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->e:Lmaster/flame/danmaku/a/h$a;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/h$a;->c()V

    return-void
.end method
