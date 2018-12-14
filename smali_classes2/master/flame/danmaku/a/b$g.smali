.class public Lmaster/flame/danmaku/a/b$g;
.super Lmaster/flame/danmaku/a/b$a;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/a/b$a<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 501
    invoke-direct {p0}, Lmaster/flame/danmaku/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 501
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/b$g;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 520
    iput-object p1, p0, Lmaster/flame/danmaku/a/b$g;->a:Ljava/util/Map;

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 0

    .line 508
    iget-object p2, p0, Lmaster/flame/danmaku/a/b$g;->a:Ljava/util/Map;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 509
    iget-object p2, p0, Lmaster/flame/danmaku/a/b$g;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 510
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x1

    :cond_0
    if-eqz p3, :cond_1

    .line 512
    iget p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    or-int/lit16 p2, p2, 0x200

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    :cond_1
    return p3
.end method
