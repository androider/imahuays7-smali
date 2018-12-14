.class Lcom/tencent/wxop/stat/aq;
.super Ljava/lang/Object;


# static fields
.field private static volatile f:J


# instance fields
.field private a:Lcom/tencent/wxop/stat/event/e;

.field private b:Lcom/tencent/wxop/stat/StatReportStrategy;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/wxop/stat/event/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/aq;->b:Lcom/tencent/wxop/stat/StatReportStrategy;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    iput-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    iput-object p1, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getStatSendStrategy()Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/aq;->b:Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/event/e;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/event/e;->e()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/aq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/tencent/wxop/stat/h;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/i;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/wxop/stat/i;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/wxop/stat/aq;)Lcom/tencent/wxop/stat/event/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    return-object p0
.end method

.method private b()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/event/e;->d()Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/event/e;->d()Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->isSendImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->INSTANT:Lcom/tencent/wxop/stat/StatReportStrategy;

    iput-object v0, p0, Lcom/tencent/wxop/stat/aq;->b:Lcom/tencent/wxop/stat/StatReportStrategy;

    :cond_0
    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->j:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->INSTANT:Lcom/tencent/wxop/stat/StatReportStrategy;

    iput-object v0, p0, Lcom/tencent/wxop/stat/aq;->b:Lcom/tencent/wxop/stat/StatReportStrategy;

    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strategy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wxop/stat/aq;->b:Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/tencent/wxop/stat/ag;->a:[I

    iget-object v1, p0, Lcom/tencent/wxop/stat/aq;->b:Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/StatReportStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stat strategy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getStatSendStrategy()Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/tencent/wxop/stat/as;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/as;-><init>(Lcom/tencent/wxop/stat/aq;)V

    invoke-direct {p0, v0}, Lcom/tencent/wxop/stat/aq;->a(Lcom/tencent/wxop/stat/h;)V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a;->c()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/tencent/wxop/stat/aq;->c()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    iget-boolean v4, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    new-instance v3, Lcom/tencent/wxop/stat/ar;

    invoke-direct {v3, p0}, Lcom/tencent/wxop/stat/ar;-><init>(Lcom/tencent/wxop/stat/aq;)V

    iget-boolean v4, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    iget-boolean v4, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    iget-boolean v4, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PERIOD currTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/wxop/stat/aq;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",nextPeriodSendTs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",difftime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    iget-wide v4, p0, Lcom/tencent/wxop/stat/aq;->e:J

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_4
    sget-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    const-string v1, "last_period_ts"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    iget-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    sget-wide v2, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->e(Landroid/content/Context;)V

    :cond_5
    iget-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v4, v0, v2

    sget-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_6

    sput-wide v4, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    :cond_6
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/d;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/d;->a()V

    :cond_7
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PERIOD currTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/wxop/stat/aq;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",nextPeriodSendTs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",difftime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    iget-wide v4, p0, Lcom/tencent/wxop/stat/aq;->e:J

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_8
    iget-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    sget-wide v2, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->e(Landroid/content/Context;)V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/tencent/wxop/stat/aq;->c()V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/tencent/wxop/stat/au;->b()Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget v0, v0, Lcom/tencent/wxop/stat/au;->a:I

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/au;->b()Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    invoke-static {}, Lcom/tencent/wxop/stat/au;->b()Lcom/tencent/wxop/stat/au;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/au;->a(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/wxop/stat/at;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/at;-><init>(Lcom/tencent/wxop/stat/aq;)V

    invoke-direct {p0, v0}, Lcom/tencent/wxop/stat/aq;->a(Lcom/tencent/wxop/stat/h;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/wxop/stat/aq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    return p0
.end method

.method private d()Z
    .locals 6

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->h:I

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->l()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    sget-wide v2, Lcom/tencent/wxop/stat/StatConfig;->i:J

    add-long v4, v0, v2

    invoke-static {v4, v5}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(J)J

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear methodsCalledLimitMap, nextLimitCallClearTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/event/e;->a()Lcom/tencent/wxop/stat/event/EventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/event/EventType;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->m()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->m()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v3, Lcom/tencent/wxop/stat/StatConfig;->h:I

    if-le v0, v3, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    invoke-virtual {v4}, Lcom/tencent/wxop/stat/event/e;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was discard, cause of called limit, current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/wxop/stat/StatConfig;->h:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", period:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/tencent/wxop/stat/StatConfig;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->m()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-direct {p0}, Lcom/tencent/wxop/stat/aq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    sget-wide v2, Lcom/tencent/wxop/stat/aq;->f:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    iget-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    sget-wide v2, Lcom/tencent/wxop/stat/StatConfig;->n:J

    add-long v4, v0, v2

    sput-wide v4, Lcom/tencent/wxop/stat/aq;->f:J

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nextFlushTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/tencent/wxop/stat/aq;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendFailedCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/tencent/wxop/stat/StatServiceImpl;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/wxop/stat/aq;->b()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    iget-boolean v4, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    iget-wide v0, p0, Lcom/tencent/wxop/stat/aq;->e:J

    sget-wide v2, Lcom/tencent/wxop/stat/StatServiceImpl;->b:J

    sub-long v4, v0, v2

    const-wide/32 v0, 0x1b7740

    cmp-long v2, v4, v0

    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->d(Landroid/content/Context;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/wxop/stat/aq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/wxop/stat/aq;->a:Lcom/tencent/wxop/stat/event/e;

    iget-boolean v4, p0, Lcom/tencent/wxop/stat/aq;->c:Z

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    return-void
.end method
