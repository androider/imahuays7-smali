.class public Lanet/channel/strategy/m;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/m$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/ConnProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/m;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lanet/channel/strategy/m;
    .locals 1

    .line 15
    sget-object v0, Lanet/channel/strategy/m$a;->a:Lanet/channel/strategy/m;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;
    .locals 1

    .line 29
    iget-object v0, p0, Lanet/channel/strategy/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/ConnProtocol;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 24
    iget-object v0, p0, Lanet/channel/strategy/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
