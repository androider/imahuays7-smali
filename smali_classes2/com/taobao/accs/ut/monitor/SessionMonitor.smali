.class public Lcom/taobao/accs/ut/monitor/SessionMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/e;
    a = "accs"
    b = "session"
.end annotation


# instance fields
.field private a:J

.field public auth_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 15000.0
    .end annotation
.end field

.field private b:J

.field public close_connection_type:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public close_reasons:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public connect_type:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public connection_stop_date:J

.field public fail_reasons:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public isProxy:Z
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public live_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 86400.0
    .end annotation
.end field

.field public ping_rec_times:I
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
    .end annotation
.end field

.field public ping_send_times:I
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
    .end annotation
.end field

.field public ret:Z
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public retry_times:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public sdkv:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public ssl_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 15000.0
    .end annotation
.end field

.field public tcp_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 15000.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    .line 13
    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->fail_reasons:I

    const-string v1, "none"

    .line 14
    iput-object v1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    const/4 v1, 0x2

    .line 16
    iput v1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_connection_type:I

    const-string v1, "none"

    .line 17
    iput-object v1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connect_type:Ljava/lang/String;

    .line 18
    iput-boolean v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->isProxy:Z

    const/16 v0, 0xdd

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->sdkv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCloseReason()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    return-object v0
.end method

.method public getConCloseDate()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->b:J

    return-wide v0
.end method

.method public getConStopDate()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    return-wide v0
.end method

.method public getRet()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    return v0
.end method

.method public onCloseConnect()V
    .locals 2

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->b:J

    return-void
.end method

.method public onConnectStop()V
    .locals 2

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    return-void
.end method

.method public onPingCBReceive()V
    .locals 1

    .line 72
    iget v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    return-void
.end method

.method public onSendPing()V
    .locals 1

    .line 68
    iget v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_send_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_send_times:I

    return-void
.end method

.method public onStartConnect()V
    .locals 2

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->a:J

    return-void
.end method

.method public setCloseReason(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    return-void
.end method

.method public setCloseType(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_connection_type:I

    return-void
.end method

.method public setConnectType(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connect_type:Ljava/lang/String;

    return-void
.end method

.method public setFailReason(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->fail_reasons:I

    return-void
.end method

.method public setRet(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->retry_times:I

    return-void
.end method
