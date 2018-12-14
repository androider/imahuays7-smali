.class public Lanet/channel/strategy/a;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Z

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lanet/channel/strategy/a;->a:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 15
    iput-wide v0, p0, Lanet/channel/strategy/a;->b:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-boolean v0, p0, Lanet/channel/strategy/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnEvent#Success"

    goto :goto_0

    :cond_0
    const-string v0, "ConnEvent#Fail"

    :goto_0
    return-object v0
.end method
