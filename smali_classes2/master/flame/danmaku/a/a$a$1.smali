.class Lmaster/flame/danmaku/a/a$a$1;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/a$a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/a/a$a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/a$a;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$1;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 312
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a$1;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 3

    .line 315
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$1;->a:Lmaster/flame/danmaku/a/a$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmaster/flame/danmaku/a/a$a;->a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x0

    return p1
.end method
