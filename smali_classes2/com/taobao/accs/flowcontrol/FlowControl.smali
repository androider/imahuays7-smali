.class public Lcom/taobao/accs/flowcontrol/FlowControl;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;,
        Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 163
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    .line 165
    invoke-virtual {v1}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 169
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private a(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long p1, p3, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "FlowControl"

    const-string p2, "error flow ctrl info"

    const/4 p3, 0x0

    .line 99
    new-array p4, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/lang/String;)I
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v3, 0x1a6

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_b

    .line 43
    :try_start_0
    sget-object v7, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v7}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 44
    sget-object v8, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v8}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 45
    sget-object v9, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v9}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 46
    sget-object v10, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v10}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 48
    :goto_0
    :try_start_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-wide v14, v4

    goto :goto_1

    :cond_1
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-wide v14, v10

    .line 49
    :goto_1
    :try_start_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-wide v8, v4

    goto :goto_2

    :cond_2
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_2
    const/16 v10, 0x1a5

    const/16 v11, 0x1a4

    if-eq v7, v11, :cond_3

    if-eq v7, v10, :cond_3

    if-ne v7, v3, :cond_4

    .line 51
    :cond_3
    invoke-direct {v1, v14, v15, v8, v9}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(JJ)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    return v6

    .line 57
    :cond_5
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    :try_start_3
    iget-object v12, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v12, :cond_6

    .line 59
    :try_start_4
    new-instance v12, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-direct {v12}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;-><init>()V

    iput-object v12, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-wide/from16 v20, v14

    goto/16 :goto_6

    :cond_6
    :goto_3
    const/4 v12, 0x0

    if-ne v7, v11, :cond_7

    .line 63
    :try_start_5
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    const-string v11, "ALL"

    const-string v12, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v10, v2

    move v13, v7

    move-wide/from16 v20, v14

    move-wide/from16 v16, v8

    :try_start_6
    invoke-direct/range {v10 .. v19}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 65
    iget-object v8, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v9, "ALL"

    const-string v10, ""

    invoke-virtual {v8, v9, v10, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    goto :goto_4

    :cond_7
    move-wide/from16 v20, v14

    if-ne v7, v3, :cond_8

    .line 67
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    const-string v11, "ALL_BRUSH"

    const-string v12, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v10, v2

    move v13, v7

    move-wide/from16 v14, v20

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v19}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 69
    iget-object v8, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v9, "ALL_BRUSH"

    const-string v10, ""

    invoke-virtual {v8, v9, v10, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    goto :goto_4

    :cond_8
    if-ne v7, v10, :cond_9

    .line 70
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 71
    new-instance v14, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v10, v14

    move-object/from16 v11, p2

    move-object v12, v2

    move v13, v7

    move-object v3, v14

    move-wide/from16 v14, v20

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v19}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 73
    iget-object v8, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v9, p2

    invoke-virtual {v8, v9, v2, v3}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    move-object v2, v3

    goto :goto_4

    :cond_9
    move-object v2, v12

    :goto_4
    if-eqz v2, :cond_a

    const-string v3, "FlowControl"

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFlowCtrlInfo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v3, v2, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_a
    monitor-exit p0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-wide/from16 v20, v14

    :goto_5
    move-object v2, v0

    :goto_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v20, v14

    :goto_7
    move-object v2, v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v2, v0

    move-wide/from16 v20, v4

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v0

    move-wide/from16 v20, v4

    const/4 v7, 0x0

    :goto_8
    const-string v3, "FlowControl"

    const-string v8, "updateFlowCtrlInfo"

    .line 82
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v3, v8, v2, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_b
    move-wide/from16 v20, v4

    const/4 v7, 0x0

    :goto_9
    cmp-long v2, v20, v4

    if-lez v2, :cond_c

    const/4 v2, 0x1

    return v2

    :cond_c
    cmp-long v2, v20, v4

    if-nez v2, :cond_d

    return v6

    :cond_d
    const/16 v2, 0x1a6

    if-ne v2, v7, :cond_e

    const/4 v2, 0x3

    return v2

    :cond_e
    const/4 v2, 0x2

    return v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13

    .line 110
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->a:Ljava/util/Map;

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 116
    :cond_0
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v3, "ALL"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v0

    .line 118
    iget-object v3, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v5, "ALL_BRUSH"

    invoke-virtual {v3, v5, v4}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v3

    .line 119
    iget-object v5, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-virtual {v5, p1, v4}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v4

    .line 120
    iget-object v5, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-virtual {v5, p1, p2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v5

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v6, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto :goto_1

    :cond_2
    :goto_0
    move-wide v6, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 127
    invoke-virtual {v3}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v8, v3, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto :goto_3

    :cond_4
    :goto_2
    move-wide v8, v1

    :goto_3
    if-eqz v4, :cond_6

    .line 131
    invoke-virtual {v4}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    iget-wide v3, v4, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto :goto_5

    :cond_6
    :goto_4
    move-wide v3, v1

    :goto_5
    if-eqz v5, :cond_8

    .line 135
    invoke-virtual {v5}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    iget-wide v1, v5, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    :cond_8
    :goto_6
    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    if-eqz v12, :cond_d

    cmp-long v12, v1, v10

    if-eqz v12, :cond_d

    cmp-long v12, v3, v10

    if-nez v12, :cond_9

    goto :goto_8

    :cond_9
    cmp-long v12, v8, v10

    if-nez v12, :cond_a

    const-wide/16 v10, -0x3e8

    goto :goto_8

    :cond_a
    cmp-long v8, v6, v1

    if-lez v8, :cond_b

    move-wide v8, v6

    goto :goto_7

    :cond_b
    move-wide v8, v1

    :goto_7
    cmp-long v10, v8, v3

    if-lez v10, :cond_c

    move-wide v10, v8

    goto :goto_8

    :cond_c
    move-wide v10, v3

    :cond_d
    :goto_8
    if-eqz v5, :cond_e

    .line 149
    invoke-virtual {v5}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 151
    :cond_f
    invoke-direct {p0}, Lcom/taobao/accs/flowcontrol/FlowControl;->a()V

    .line 153
    :cond_10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "FlowControl"

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFlowCtrlDelay service "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " biz "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " global:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " serviceDelay:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bidDelay:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v10

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_11
    :goto_9
    return-wide v1
.end method
