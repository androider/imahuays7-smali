.class public Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/e;
    a = "accs"
    b = "ele_succ_rate"
.end annotation


# instance fields
.field public eleVer:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public errorCode:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public reason:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public sdkVer:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 15000.0
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    const-string v0, "none"

    .line 17
    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->eleVer:I

    const/16 v0, 0xdd

    .line 22
    iput v0, p0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->sdkVer:I

    return-void
.end method
