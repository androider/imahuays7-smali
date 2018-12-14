.class Lanet/channel/monitor/e;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private a:J

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lanet/channel/monitor/e;->a:J

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lanet/channel/monitor/e;->b:D

    iput-wide v0, p0, Lanet/channel/monitor/e;->c:D

    .line 20
    iput-wide v0, p0, Lanet/channel/monitor/e;->d:D

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lanet/channel/monitor/e;->a:J

    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lanet/channel/monitor/e;->d:D

    return-void
.end method
