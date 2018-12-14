.class Lanet/channel/p;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/entity/a;


# instance fields
.field final synthetic a:Lanet/channel/i$a;

.field final synthetic b:J

.field final synthetic c:Lanet/channel/i;


# direct methods
.method constructor <init>(Lanet/channel/i;Lanet/channel/i$a;J)V
    .locals 0

    .line 392
    iput-object p1, p0, Lanet/channel/p;->c:Lanet/channel/i;

    iput-object p2, p0, Lanet/channel/p;->a:Lanet/channel/i$a;

    iput-wide p3, p0, Lanet/channel/p;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v1, p3

    if-eqz v2, :cond_7

    if-nez v5, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 398
    :cond_1
    iget v4, v1, Lanet/channel/entity/e;->c:I

    move v6, v4

    :goto_0
    if-nez v1, :cond_2

    const-string v4, ""

    goto :goto_1

    .line 399
    :cond_2
    iget-object v4, v1, Lanet/channel/entity/e;->d:Ljava/lang/String;

    .line 400
    :goto_1
    sget-object v7, Lanet/channel/i$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lanet/channel/entity/EventType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x6

    const/4 v14, 0x0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string v7, "awcn.SessionRequest"

    if-eqz v2, :cond_3

    .line 416
    iget-object v15, v2, Lanet/channel/Session;->m:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v15, v14

    :goto_2
    new-array v13, v13, [Ljava/lang/Object;

    const-string v16, "Session"

    aput-object v16, v13, v3

    aput-object v2, v13, v12

    const-string v3, "EventType"

    aput-object v3, v13, v11

    aput-object v5, v13, v10

    const-string v3, "Event"

    aput-object v3, v13, v9

    aput-object v1, v13, v8

    invoke-static {v7, v14, v15, v13}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v1, v0, Lanet/channel/p;->c:Lanet/channel/i;

    invoke-virtual {v1, v2, v6, v4}, Lanet/channel/i;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 418
    iget-object v1, v0, Lanet/channel/p;->a:Lanet/channel/i$a;

    iget-wide v3, v0, Lanet/channel/p;->b:J

    invoke-interface/range {v1 .. v6}, Lanet/channel/i$a;->a(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V

    goto :goto_5

    :pswitch_1
    const-string v7, "awcn.SessionRequest"

    if-eqz v2, :cond_4

    .line 407
    iget-object v15, v2, Lanet/channel/Session;->m:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v15, v14

    :goto_3
    new-array v13, v13, [Ljava/lang/Object;

    const-string v16, "Session"

    aput-object v16, v13, v3

    aput-object v2, v13, v12

    const-string v3, "EventType"

    aput-object v3, v13, v11

    aput-object v5, v13, v10

    const-string v3, "Event"

    aput-object v3, v13, v9

    aput-object v1, v13, v8

    invoke-static {v7, v14, v15, v13}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v1, v0, Lanet/channel/p;->c:Lanet/channel/i;

    invoke-virtual {v1, v2, v6, v4}, Lanet/channel/i;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 409
    iget-object v1, v0, Lanet/channel/p;->c:Lanet/channel/i;

    iget-object v1, v1, Lanet/channel/i;->c:Lanet/channel/o;

    iget-object v3, v0, Lanet/channel/p;->c:Lanet/channel/i;

    invoke-virtual {v1, v3, v2}, Lanet/channel/o;->c(Lanet/channel/i;Lanet/channel/Session;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 410
    iget-object v1, v0, Lanet/channel/p;->a:Lanet/channel/i$a;

    iget-wide v3, v0, Lanet/channel/p;->b:J

    invoke-interface {v1, v2, v3, v4, v5}, Lanet/channel/i$a;->a(Lanet/channel/Session;JLanet/channel/entity/EventType;)V

    goto :goto_5

    .line 412
    :cond_5
    iget-object v1, v0, Lanet/channel/p;->a:Lanet/channel/i$a;

    iget-wide v3, v0, Lanet/channel/p;->b:J

    invoke-interface/range {v1 .. v6}, Lanet/channel/i$a;->a(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V

    goto :goto_5

    :pswitch_2
    const-string v4, "awcn.SessionRequest"

    if-eqz v2, :cond_6

    .line 402
    iget-object v6, v2, Lanet/channel/Session;->m:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v6, v14

    :goto_4
    new-array v7, v13, [Ljava/lang/Object;

    const-string v13, "Session"

    aput-object v13, v7, v3

    aput-object v2, v7, v12

    const-string v12, "EventType"

    aput-object v12, v7, v11

    aput-object v5, v7, v10

    const-string v5, "Event"

    aput-object v5, v7, v9

    aput-object v1, v7, v8

    invoke-static {v4, v14, v6, v7}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object v1, v0, Lanet/channel/p;->c:Lanet/channel/i;

    invoke-virtual {v1, v2, v3, v14}, Lanet/channel/i;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 404
    iget-object v1, v0, Lanet/channel/p;->a:Lanet/channel/i$a;

    iget-wide v3, v0, Lanet/channel/p;->b:J

    invoke-interface {v1, v2, v3, v4}, Lanet/channel/i$a;->a(Lanet/channel/Session;J)V

    :goto_5
    return-void

    :cond_7
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
