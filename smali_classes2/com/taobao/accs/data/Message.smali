.class public Lcom/taobao/accs/data/Message;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/data/Message$ReqType;,
        Lcom/taobao/accs/data/Message$a;
    }
.end annotation


# static fields
.field public static a:I = 0x5

.field static b:J = 0x1L


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/Integer;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:[B

.field public M:Ljava/lang/String;

.field N:I

.field public O:J

.field public P:I

.field public Q:I

.field public R:J

.field S:J

.field public T:Ljava/lang/String;

.field transient U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

.field V:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/net/URL;

.field g:B

.field h:B

.field i:S

.field j:S

.field k:S

.field l:B

.field m:B

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:I

.field public q:Ljava/lang/String;

.field r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/lang/String;

.field public t:Ljava/lang/Integer;

.field u:Ljava/lang/Integer;

.field v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field x:Ljava/lang/Integer;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/taobao/accs/data/Message;->c:Z

    .line 146
    iput-boolean v0, p0, Lcom/taobao/accs/data/Message;->d:Z

    .line 148
    iput-boolean v0, p0, Lcom/taobao/accs/data/Message;->e:Z

    .line 152
    iput-byte v0, p0, Lcom/taobao/accs/data/Message;->g:B

    .line 154
    iput-byte v0, p0, Lcom/taobao/accs/data/Message;->h:B

    const/4 v1, -0x1

    .line 172
    iput v1, p0, Lcom/taobao/accs/data/Message;->p:I

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/data/Message;->u:Ljava/lang/Integer;

    .line 185
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    .line 187
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    .line 191
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    .line 193
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->z:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->A:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 199
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->K:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 223
    iput-wide v2, p0, Lcom/taobao/accs/data/Message;->O:J

    .line 225
    iput v0, p0, Lcom/taobao/accs/data/Message;->P:I

    const v0, 0x9c40

    .line 227
    iput v0, p0, Lcom/taobao/accs/data/Message;->Q:I

    .line 231
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->T:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 241
    const-class v0, Lcom/taobao/accs/data/Message;

    monitor-enter v0

    .line 242
    :try_start_0
    sget-wide v1, Lcom/taobao/accs/data/Message;->b:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/taobao/accs/data/Message;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/data/Message;->R:J

    return-void

    :catchall_0
    move-exception v1

    .line 243
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 5

    .line 628
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 631
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v2, 0x1

    .line 633
    :try_start_0
    iput v2, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 634
    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v3, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 635
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    .line 637
    iput-object p4, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const-string v3, "3|dm|"

    .line 638
    iput-object v3, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 639
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 640
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    .line 641
    invoke-static {p0}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2, p3, v2, p1}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    const/16 p2, 0xdd

    .line 642
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 643
    iput-object p6, v0, Lcom/taobao/accs/data/Message;->A:Ljava/lang/String;

    .line 644
    iput-object p4, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 645
    iput-object p5, v0, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    .line 646
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    .line 647
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string p2, "ctrl_bindapp"

    .line 648
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    .line 649
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 650
    new-instance p1, Lcom/taobao/accs/utl/g$a;

    invoke-direct {p1}, Lcom/taobao/accs/utl/g$a;-><init>()V

    const-string p2, "notifyEnable"

    invoke-static {p0}, Lcom/taobao/accs/utl/b;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object p1

    const-string p2, "romInfo"

    .line 2012
    new-instance p3, Lcom/taobao/accs/utl/f;

    invoke-direct {p3}, Lcom/taobao/accs/utl/f;-><init>()V

    .line 650
    invoke-virtual {p3}, Lcom/taobao/accs/utl/k;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/accs/utl/g$a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/accs/data/Message;->z:Ljava/lang/String;

    const-string p1, "phone"

    .line 654
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    .line 655
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 656
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, v0, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 659
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static a(Lcom/taobao/accs/f/c;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "packageName"

    .line 595
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "userInfo"

    .line 597
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "appKey"

    .line 599
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ttid"

    .line 601
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "sid"

    .line 602
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "anti_brush_cookie"

    .line 603
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "appVersion"

    .line 604
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "app_sercet"

    .line 605
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 606
    iget-object v3, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    :try_start_1
    invoke-static {p0, p1}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, v0

    :goto_0
    const-string p2, "Msg_"

    const-string v0, "buildBindApp"

    const/4 v1, 0x0

    .line 621
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 622
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public static a(Lcom/taobao/accs/f/c;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;
    .locals 1

    const/4 v0, 0x1

    .line 940
    invoke-static {p0, p1, p2, p3, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/taobao/accs/f/c;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .locals 7

    .line 945
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 948
    :cond_0
    new-instance v6, Lcom/taobao/accs/data/Message;

    invoke-direct {v6}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v0, 0x1

    .line 949
    iput v0, v6, Lcom/taobao/accs/data/Message;->N:I

    .line 950
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v6, v0, v1, v0}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    const/16 v0, 0x64

    .line 951
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 952
    iput-object p2, v6, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 954
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 955
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 956
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->L:[B

    .line 957
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    .line 958
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, ""

    goto :goto_1

    :cond_2
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 960
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    .line 961
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->T:Ljava/lang/String;

    .line 962
    iget p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez p2, :cond_3

    .line 963
    iget p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput p2, v6, Lcom/taobao/accs/data/Message;->Q:I

    :cond_3
    if-eqz p4, :cond_4

    .line 967
    invoke-static {p0, v6, p3}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    goto :goto_2

    .line 969
    :cond_4
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    .line 972
    :goto_2
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p2

    iget-object p4, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/taobao/accs/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 973
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 974
    sget-object v3, Lcom/taobao/accs/client/a;->c:Ljava/lang/String;

    .line 975
    iget-object v4, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance p1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object p1, v6, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 978
    iget-object p1, v6, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 979
    iget-object p1, v6, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 980
    iget-object p1, v6, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, v6, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 981
    iget-object p0, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    iput-object p0, v6, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    return-object v6
.end method

.method public static a(Lcom/taobao/accs/f/c;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "packageName"

    .line 812
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userInfo"

    .line 814
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appKey"

    .line 816
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "sid"

    .line 818
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "anti_brush_cookie"

    .line 819
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 820
    invoke-static {v1, v2}, Lcom/taobao/accs/data/Message;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 822
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    iput-object v0, p1, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 825
    invoke-static {p0, p1}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, v0

    :goto_0
    const-string v0, "Msg_"

    const-string v1, "buildBindUser"

    const/4 v2, 0x0

    .line 827
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 828
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public static a(Lcom/taobao/accs/f/c;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Msg_"

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildUnbindApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 694
    :cond_0
    new-instance v2, Lcom/taobao/accs/data/Message;

    invoke-direct {v2}, Lcom/taobao/accs/data/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    .line 695
    :try_start_1
    iput v1, v2, Lcom/taobao/accs/data/Message;->N:I

    .line 696
    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v2, v1, v3, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 697
    iput-object p1, v2, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const-string v1, "3|dm|"

    .line 698
    iput-object v1, v2, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 v1, 0x2

    .line 699
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 700
    iput-object p1, v2, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const/16 p1, 0xdd

    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    const-string p1, "ctrl_unbindapp"

    .line 702
    iput-object p1, v2, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    .line 705
    invoke-static {p0, v2}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v2, v1

    :goto_0
    const-string p1, "Msg_"

    const-string v1, "buildUnbindApp"

    .line 708
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 709
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object v2
.end method

.method public static a(Lcom/taobao/accs/f/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/f/c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    .line 1104
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 1105
    iput v1, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 1107
    invoke-direct {v0, p5, p4}, Lcom/taobao/accs/data/Message;->a(SZ)V

    .line 1108
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    .line 1109
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 1110
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    .line 1111
    iput-boolean v1, v0, Lcom/taobao/accs/data/Message;->c:Z

    .line 1112
    iput-object p7, v0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    const/4 p1, 0x0

    .line 1114
    :try_start_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1115
    new-instance p2, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/taobao/accs/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    goto :goto_0

    .line 1118
    :cond_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    .line 1120
    :goto_0
    iget-object p2, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    iget-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez p2, :cond_1

    .line 1126
    :try_start_1
    new-instance p2, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/taobao/accs/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_2
    const-string p3, "Msg_"

    const-string p4, "buildPushAck"

    const/4 p5, 0x0

    .line 1122
    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p3, p4, p2, p5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1124
    iget-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez p2, :cond_1

    .line 1126
    :try_start_3
    new-instance p2, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/taobao/accs/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1129
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0

    .line 1124
    :goto_2
    iget-object p3, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez p3, :cond_2

    .line 1126
    :try_start_4
    new-instance p3, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/taobao/accs/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p3, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 1129
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 1130
    :cond_2
    :goto_3
    throw p2
.end method

.method public static a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .line 878
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 881
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 882
    iput v1, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 883
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 884
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const-string p0, "3|dm|"

    .line 886
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 p0, 0x4

    .line 887
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    const/16 p0, 0xdd

    .line 888
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    const-string p0, "ctrl_unbinduser"

    .line 889
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;
    .locals 4

    .line 1137
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 1138
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 1139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 1140
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .line 742
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 746
    iput v1, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 747
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 748
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 749
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    const-string v1, "3|dm|"

    .line 750
    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 v1, 0x5

    .line 751
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 752
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 754
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    const/16 p0, 0xdd

    .line 755
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    const-string p0, "ctrl_bindservice"

    .line 756
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 899
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 901
    :try_start_0
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 902
    iput v2, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 903
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const-string p0, "4|sal|el"

    .line 904
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/16 p0, 0x69

    .line 905
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 907
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 908
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 909
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pkg"

    .line 910
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdkv"

    .line 911
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 912
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 914
    :cond_1
    new-instance p1, Lcom/taobao/accs/utl/g$a;

    invoke-direct {p1}, Lcom/taobao/accs/utl/g$a;-><init>()V

    const-string v1, "sdkv"

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/g$a;

    move-result-object p1

    const-string v1, "packs"

    invoke-virtual {p1, v1, p0}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/taobao/accs/utl/g$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/accs/utl/g$a;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->L:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Msg_"

    const-string v1, "buildElection"

    const/4 v2, 0x0

    .line 918
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, p0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public static a(ZI)Lcom/taobao/accs/data/Message;
    .locals 2

    .line 574
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x2

    .line 575
    iput v1, v0, Lcom/taobao/accs/data/Message;->p:I

    const/16 v1, 0xc9

    .line 576
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 577
    iput-boolean p0, v0, Lcom/taobao/accs/data/Message;->d:Z

    int-to-long p0, p1

    .line 578
    iput-wide p0, v0, Lcom/taobao/accs/data/Message;->O:J

    return-object v0
.end method

.method private a(ILcom/taobao/accs/data/Message$ReqType;I)V
    .locals 1

    .line 1170
    iput p1, p0, Lcom/taobao/accs/data/Message;->p:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x4

    .line 1172
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message$ReqType;->ordinal()I

    move-result p2

    shl-int/2addr p2, v0

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    shl-int/lit8 p1, p1, 0xb

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    :cond_0
    return-void
.end method

.method private static a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1145
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_5

    .line 1150
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    const/16 v0, 0x3ff

    if-eqz p4, :cond_1

    .line 1151
    invoke-static {p4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 1152
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    .line 1154
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;)I

    move-result p4

    if-gt p4, v0, :cond_2

    .line 1155
    iget-object p4, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 1157
    invoke-static {p2}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v0, :cond_3

    .line 1158
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object p4, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {p4}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p5, :cond_4

    .line 1160
    invoke-static {p5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v0, :cond_4

    .line 1161
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object p2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {p2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p3, :cond_5

    .line 1163
    invoke-static {p3}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v0, :cond_5

    .line 1164
    iget-object p0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object p1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {p1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private static a(Lcom/taobao/accs/f/c;Lcom/taobao/accs/data/Message;)V
    .locals 2

    const/4 v0, 0x0

    .line 1096
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/taobao/accs/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1097
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Msg_"

    const-string v0, "setControlHost"

    const/4 v1, 0x0

    .line 1099
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static a(Lcom/taobao/accs/f/c;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V
    .locals 1

    .line 1062
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 1064
    :try_start_0
    new-instance p2, Ljava/net/URL;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/accs/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Msg_"

    const-string p2, "setUnit"

    const/4 v0, 0x0

    .line 1067
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1068
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1071
    :cond_0
    iget-object p0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object p0, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    :goto_0
    return-void
.end method

.method private a(SZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1185
    iput v0, p0, Lcom/taobao/accs/data/Message;->p:I

    .line 1187
    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1188
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit16 p1, p1, -0x4001

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1189
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    or-int/lit16 p1, p1, 0x2000

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1190
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit16 p1, p1, -0x801

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1191
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit8 p1, p1, -0x41

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    if-eqz p2, :cond_0

    .line 1195
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    or-int/lit8 p1, p1, 0x20

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    :cond_0
    return-void
.end method

.method public static b(Lcom/taobao/accs/f/c;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .locals 7

    .line 989
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 992
    :cond_0
    new-instance v6, Lcom/taobao/accs/data/Message;

    invoke-direct {v6}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v0, 0x1

    .line 993
    iput v0, v6, Lcom/taobao/accs/data/Message;->N:I

    .line 994
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v6, v0, v1, v0}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    const/16 v0, 0x64

    .line 995
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 996
    iput-object p2, v6, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 997
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 998
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 1000
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->L:[B

    .line 1001
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    .line 1002
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, ""

    goto :goto_1

    :cond_2
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 1004
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    .line 1005
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->T:Ljava/lang/String;

    .line 1006
    iget-object p2, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 1007
    iget p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez p2, :cond_3

    .line 1008
    iget p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput p2, v6, Lcom/taobao/accs/data/Message;->Q:I

    :cond_3
    if-eqz p4, :cond_4

    .line 1012
    invoke-static {p0, v6, p3}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    goto :goto_2

    .line 1014
    :cond_4
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object p2, v6, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    .line 1017
    :goto_2
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p2

    iget-object p4, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/taobao/accs/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    sget-object v3, Lcom/taobao/accs/client/a;->c:Ljava/lang/String;

    .line 1021
    iget-object v4, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance p1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object p1, v6, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 1024
    iget-object p1, v6, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 1025
    iget-object p1, v6, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 1026
    iget-object p1, v6, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, v6, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 1027
    iget-object p0, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    iput-object p0, v6, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    return-object v6
.end method

.method public static b(Lcom/taobao/accs/f/c;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "packageName"

    .line 856
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userInfo"

    .line 858
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "appKey"

    .line 860
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "sid"

    .line 862
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "anti_brush_cookie"

    .line 863
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 864
    invoke-static {v1}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 866
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    iput-object v0, p1, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 869
    invoke-static {p0, p1}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, v0

    :goto_0
    const-string v0, "Msg_"

    const-string v1, "buildUnbindUser"

    const/4 v2, 0x0

    .line 871
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 872
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .line 789
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 792
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 793
    iput v1, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 794
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 795
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 797
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    const-string v1, "3|dm|"

    .line 798
    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 v1, 0x6

    .line 799
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 800
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 801
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    const/16 p0, 0xdd

    .line 802
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    const-string p0, "ctrl_unbindservice"

    .line 803
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .line 834
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 838
    iput v1, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 839
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 840
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 842
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    const-string v1, "3|dm|"

    .line 843
    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 v1, 0x3

    .line 844
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 845
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 846
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    const/16 p0, 0xdd

    .line 847
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    const-string p0, "ctrl_binduser"

    .line 848
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Msg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/taobao/accs/data/Message;->p:I

    return v0
.end method

.method a(Ljava/util/Map;)S
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)S"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 483
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 485
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "utf-8"

    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x3ff

    int-to-short v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-short v0, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 492
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_1
    return v0
.end method

.method public a(J)V
    .locals 0

    .line 279
    iput-wide p1, p0, Lcom/taobao/accs/data/Message;->S:J

    return-void
.end method

.method a([B)V
    .locals 5

    const-string v0, ""

    .line 561
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    array-length v1, p1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_1

    move-object v1, v0

    const/4 v0, 0x0

    .line 564
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;I)[B
    .locals 7

    const/4 v0, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/accs/data/Message;->i()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 321
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "build2"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 319
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "build1"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->L:[B

    if-eqz v1, :cond_0

    .line 326
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->L:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    const-string v1, ""

    .line 331
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/accs/data/Message;->h()V

    .line 333
    iget-boolean v2, p0, Lcom/taobao/accs/data/Message;->c:Z

    if-nez v2, :cond_3

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    .line 344
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 345
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->m:B

    .line 346
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->l:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 348
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 349
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "build3"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, p1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 351
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->m:B

    .line 352
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->l:B

    .line 356
    :goto_4
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/util/Map;)S

    move-result v2

    .line 358
    iget-byte v3, p0, Lcom/taobao/accs/data/Message;->l:B

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    iget-byte v4, p0, Lcom/taobao/accs/data/Message;->m:B

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    array-length v4, p1

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/taobao/accs/data/Message;->L:[B

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    iget-object v4, p0, Lcom/taobao/accs/data/Message;->L:[B

    array-length v4, v4

    :goto_5
    add-int/2addr v3, v4

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, p0, Lcom/taobao/accs/data/Message;->j:S

    .line 360
    iget-short v3, p0, Lcom/taobao/accs/data/Message;->j:S

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, p0, Lcom/taobao/accs/data/Message;->i:S

    .line 362
    new-instance v3, Lcom/taobao/accs/utl/i;

    iget-short v4, p0, Lcom/taobao/accs/data/Message;->i:S

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Lcom/taobao/accs/utl/i;-><init>(I)V

    .line 364
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Build Message"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :try_start_2
    iget-byte v4, p0, Lcom/taobao/accs/data/Message;->g:B

    or-int/lit8 v4, v4, 0x20

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lcom/taobao/accs/utl/i;->a(B)Lcom/taobao/accs/utl/i;

    .line 373
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 374
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tversion:2 compress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/taobao/accs/data/Message;->g:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-nez p2, :cond_6

    const/16 p2, -0x80

    .line 377
    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->a(B)Lcom/taobao/accs/utl/i;

    .line 378
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    const-string v4, "\tflag: 0x80"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    const/16 p2, 0x40

    .line 380
    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->a(B)Lcom/taobao/accs/utl/i;

    .line 381
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    const-string v4, "\tflag: 0x40"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :goto_6
    iget-short p2, p0, Lcom/taobao/accs/data/Message;->i:S

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->a(S)Lcom/taobao/accs/utl/i;

    .line 386
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 387
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ttotalLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v5, p0, Lcom/taobao/accs/data/Message;->i:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_7
    iget-short p2, p0, Lcom/taobao/accs/data/Message;->j:S

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->a(S)Lcom/taobao/accs/utl/i;

    .line 390
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 391
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tdataLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v5, p0, Lcom/taobao/accs/data/Message;->j:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_8
    iget-short p2, p0, Lcom/taobao/accs/data/Message;->k:S

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->a(S)Lcom/taobao/accs/utl/i;

    .line 395
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 396
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tflags:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v5, p0, Lcom/taobao/accs/data/Message;->k:S

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :cond_9
    iget-byte p2, p0, Lcom/taobao/accs/data/Message;->l:B

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->a(B)Lcom/taobao/accs/utl/i;

    .line 401
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 402
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ttargetLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/taobao/accs/data/Message;->l:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_a
    iget-object p2, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->write([B)V

    .line 406
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 407
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ttarget:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_b
    iget-byte p2, p0, Lcom/taobao/accs/data/Message;->m:B

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->a(B)Lcom/taobao/accs/utl/i;

    .line 411
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 412
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tsourceLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/taobao/accs/data/Message;->m:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_c
    iget-object p2, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->write([B)V

    .line 416
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 417
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tsource:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :cond_d
    array-length p2, p1

    int-to-byte p2, p2

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/i;->a(B)Lcom/taobao/accs/utl/i;

    .line 422
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 423
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tdataIdLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :cond_e
    invoke-virtual {v3, p1}, Lcom/taobao/accs/utl/i;->write([B)V

    .line 428
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 429
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tdataId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_f
    invoke-virtual {v3, v2}, Lcom/taobao/accs/utl/i;->a(S)Lcom/taobao/accs/utl/i;

    .line 433
    sget-object p1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 434
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\textHeader len:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_10
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    if-eqz p1, :cond_12

    .line 438
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 439
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 440
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    int-to-short v4, p2

    const-string v5, "utf-8"

    .line 442
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    and-int/lit16 v5, v5, 0x3ff

    int-to-short v5, v5

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v4, v5

    int-to-short v4, v4

    .line 443
    invoke-virtual {v3, v4}, Lcom/taobao/accs/utl/i;->a(S)Lcom/taobao/accs/utl/i;

    const-string v4, "utf-8"

    .line 444
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/accs/utl/i;->write([B)V

    .line 445
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 446
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\textHeader key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " value:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, p2, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 453
    :cond_12
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->L:[B

    if-eqz p1, :cond_13

    .line 454
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->L:[B

    invoke-virtual {v3, p1}, Lcom/taobao/accs/utl/i;->write([B)V

    .line 457
    :cond_13
    sget-object p1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 458
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\toriData:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_14
    invoke-virtual {v3}, Lcom/taobao/accs/utl/i;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_8

    :catch_3
    move-exception p1

    .line 464
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    const-string v1, "build4"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 467
    :goto_8
    invoke-virtual {v3}, Lcom/taobao/accs/utl/i;->toByteArray()[B

    move-result-object p1

    .line 469
    invoke-virtual {p0, p1}, Lcom/taobao/accs/data/Message;->a([B)V

    .line 472
    :try_start_3
    invoke-virtual {v3}, Lcom/taobao/accs/utl/i;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_9

    :catch_4
    move-exception p2

    .line 474
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build5"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p2, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_9
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    const-string v0, "3|dm|"

    .line 260
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 3

    .line 266
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/accs/data/Message;->c:Z

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 269
    :cond_0
    sget-wide v0, Lcom/taobao/accs/data/Message;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    :catch_0
    const-string v0, "Msg_"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse int dataId error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 10

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/accs/data/Message;->R:J

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/taobao/accs/data/Message;->O:J

    add-long v2, v4, v0

    iget v0, p0, Lcom/taobao/accs/data/Message;->Q:I

    int-to-long v0, v0

    cmp-long v4, v2, v0

    const/4 v0, 0x0

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->O:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " beforeSendTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/taobao/accs/data/Message;->R:J

    sub-long v8, v4, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/taobao/accs/data/Message;->Q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method h()V
    .locals 6

    const/4 v0, 0x0

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->L:[B

    if-nez v1, :cond_0

    return-void

    .line 505
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 506
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    :try_start_2
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 508
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 510
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    array-length v3, v0

    iget-object v4, p0, Lcom/taobao/accs/data/Message;->L:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 512
    iput-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    const/4 v0, 0x1

    .line 513
    iput-byte v0, p0, Lcom/taobao/accs/data/Message;->g:B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    if-eqz v2, :cond_2

    .line 521
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    if-eqz v1, :cond_4

    .line 524
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 516
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_3

    .line 521
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_0

    :catch_3
    :cond_4
    :goto_2
    return-void

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 524
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 528
    :catch_4
    :cond_6
    throw v0
.end method

.method i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x66

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x69

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 537
    :cond_0
    new-instance v0, Lcom/taobao/accs/utl/g$a;

    invoke-direct {v0}, Lcom/taobao/accs/utl/g$a;-><init>()V

    const-string v2, "command"

    iget-object v3, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "appKey"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "osType"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "sign"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "ttid"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "model"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "brand"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "imei"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "imsi"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "os"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    const-string v1, "exts"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/utl/g$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    return-void

    :cond_2
    :goto_1
    return-void
.end method
