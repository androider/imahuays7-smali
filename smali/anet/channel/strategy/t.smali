.class Lanet/channel/strategy/t;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lanet/channel/strategy/j$a;


# direct methods
.method constructor <init>(Lanet/channel/strategy/j$a;Ljava/util/Map$Entry;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lanet/channel/strategy/t;->b:Lanet/channel/strategy/j$a;

    iput-object p2, p0, Lanet/channel/strategy/t;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 245
    iget-object v0, p0, Lanet/channel/strategy/t;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    iget-object v1, p0, Lanet/channel/strategy/t;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/l;

    iget-object v1, v1, Lanet/channel/strategy/l;->a:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/strategy/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/strategy/z;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    return-void
.end method
