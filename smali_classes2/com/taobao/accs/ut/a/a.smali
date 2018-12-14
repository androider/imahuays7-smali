.class public Lcom/taobao/accs/ut/a/a;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BindApp"

    .line 15
    iput-object v0, p0, Lcom/taobao/accs/ut/a/a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/a;->f:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 13

    .line 64
    iget-boolean v0, p0, Lcom/taobao/accs/ut/a/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/a;->f:Z

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    const v9, 0x101d1

    const/4 v10, 0x0

    .line 73
    :try_start_0
    iget-object v11, p0, Lcom/taobao/accs/ut/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v1, 0xdd

    .line 74
    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "device_id"

    .line 75
    iget-object v2, p0, Lcom/taobao/accs/ut/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bind_date"

    .line 76
    iget-object v2, p0, Lcom/taobao/accs/ut/a/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ret"

    .line 77
    iget-boolean v2, p0, Lcom/taobao/accs/ut/a/a;->c:Z

    if-eqz v2, :cond_1

    const-string v2, "y"

    goto :goto_0

    :cond_1
    const-string v2, "n"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fail_reasons"

    .line 78
    iget-object v2, p0, Lcom/taobao/accs/ut/a/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "push_token"

    const-string v2, ""

    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "accs.BindAppStatistic"

    .line 81
    invoke-static {v9, v11, v10, v12, v0}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_2
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v1

    const v2, 0x101d1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, v11

    move-object v6, v12

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v12, v10

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v11, v10

    move-object v12, v11

    :goto_1
    const-string v1, "accs.BindAppStatistic"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v11, v10, v12, v0}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "BindApp"

    .line 58
    invoke-direct {p0, v0}, Lcom/taobao/accs/ut/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "network fail"

    .line 37
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "param error"

    .line 46
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "service not available"

    .line 49
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "msg too large"

    .line 40
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "app not bind"

    .line 43
    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/a/a;->a(Ljava/lang/String;)V

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

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/taobao/accs/ut/a/a;->d:Ljava/lang/String;

    return-void
.end method
