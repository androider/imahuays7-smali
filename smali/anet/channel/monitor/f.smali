.class public Lanet/channel/monitor/f;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field a:Z

.field protected b:J

.field private final c:D

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 7
    iput-wide v0, p0, Lanet/channel/monitor/f;->c:D

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lanet/channel/monitor/f;->a:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lanet/channel/monitor/f;->d:Z

    return-void
.end method
