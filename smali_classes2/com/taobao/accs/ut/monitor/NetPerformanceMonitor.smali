.class public Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/e;
    a = "accs"
    b = "netperformance"
.end annotation


# instance fields
.field private a:J

.field public accs_sdk_version:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public accs_type:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:J

.field public data_id:Ljava/lang/String;

.field public device_id:Ljava/lang/String;

.field public error_code:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public fail_reasons:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public in_queue_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 60000.0
    .end annotation
.end field

.field public receive_to_call_back_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 60000.0
    .end annotation
.end field

.field public ret:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public retry_times:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public send_to_receive_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 60000.0
    .end annotation
.end field

.field public service_id:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public start_to_enter_queue_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 60000.0
    .end annotation
.end field

.field public take_date:J

.field public talk_to_send_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 60000.0
    .end annotation
.end field

.field public to_tnet_date:J

.field public total_time:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
        b = 0.0
        c = 60000.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    const-string v0, "none"

    .line 23
    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->service_id:Ljava/lang/String;

    return-void
.end method

.method private a(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    sub-long v0, p3, p1

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public beforeCommit()Z
    .locals 4

    const/16 v0, 0xdd

    .line 125
    iput v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->accs_sdk_version:I

    .line 126
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->d:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->total_time:J

    .line 127
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_to_enter_queue_time:J

    .line 128
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->b:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->in_queue_time:J

    .line 129
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->talk_to_send_time:J

    .line 130
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->send_to_receive_time:J

    .line 131
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->c:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->d:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_to_call_back_time:J

    .line 132
    invoke-super {p0}, Lcom/taobao/accs/utl/BaseMonitor;->beforeCommit()Z

    move-result v0

    return v0
.end method

.method public onEnterQueueData()V
    .locals 2

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->b:J

    return-void
.end method

.method public onRecAck()V
    .locals 2

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->c:J

    return-void
.end method

.method public onSend()V
    .locals 2

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->a:J

    return-void
.end method

.method public onSendData()V
    .locals 2

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    return-void
.end method

.method public onTakeFromQueue()V
    .locals 2

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    return-void
.end method

.method public onToBizDate()V
    .locals 2

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->d:J

    return-void
.end method

.method public setConnType(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->accs_type:I

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->data_id:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setFailReason(I)V
    .locals 1

    .line 83
    iput p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->error_code:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "network fail"

    .line 88
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "param error"

    .line 97
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "service not available"

    .line 100
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "msg too large"

    .line 91
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "app not bind"

    .line 94
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFailReason(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->fail_reasons:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->host:Ljava/lang/String;

    return-void
.end method

.method public setRet(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "y"

    goto :goto_0

    :cond_0
    const-string p1, "n"

    .line 75
    :goto_0
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->ret:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->service_id:Ljava/lang/String;

    return-void
.end method
