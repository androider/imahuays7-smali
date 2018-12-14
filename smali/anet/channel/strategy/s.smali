.class Lanet/channel/strategy/s;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanet/channel/strategy/j;


# direct methods
.method constructor <init>(Lanet/channel/strategy/j;Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lanet/channel/strategy/s;->b:Lanet/channel/strategy/j;

    iput-object p2, p0, Lanet/channel/strategy/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 225
    iget-object v0, p0, Lanet/channel/strategy/s;->b:Lanet/channel/strategy/j;

    iget-object v1, p0, Lanet/channel/strategy/s;->a:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/strategy/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/s;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lanet/channel/strategy/j;->a(Lanet/channel/strategy/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
