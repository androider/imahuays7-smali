.class public Lcom/fm/openinstall/e/d;
.super Lcom/fm/openinstall/e/a;


# instance fields
.field private c:Lcom/fm/openinstall/f/c;

.field private d:I

.field private volatile e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fm/openinstall/e/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fm/openinstall/e/a;-><init>(Landroid/content/Context;Lcom/fm/openinstall/e/f;)V

    const-class p1, Lcom/fm/openinstall/e/d;

    invoke-static {p1}, Lcom/fm/openinstall/f/c;->a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;

    move-result-object p1

    iput-object p1, p0, Lcom/fm/openinstall/e/d;->c:Lcom/fm/openinstall/f/c;

    const/4 p1, 0x0

    iput p1, p0, Lcom/fm/openinstall/e/d;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fm/openinstall/e/d;->e:Z

    return-void
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/fm/openinstall/e/d;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fm/openinstall/e/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/fm/openinstall/e/d;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-wide/16 p1, 0x0

    iput v2, p0, Lcom/fm/openinstall/e/d;->d:I

    iget-object v1, p0, Lcom/fm/openinstall/e/d;->b:Lcom/fm/openinstall/e/f;

    invoke-virtual {v1}, Lcom/fm/openinstall/e/f;->c()V

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x1

    add-long v3, p1, v1

    move-wide p1, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/fm/openinstall/e/d;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iput v2, p0, Lcom/fm/openinstall/e/d;->d:I

    iget-object v1, p0, Lcom/fm/openinstall/e/d;->b:Lcom/fm/openinstall/e/f;

    invoke-virtual {v1, p1, p2}, Lcom/fm/openinstall/e/f;->c(J)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/fm/openinstall/e/d;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fm/openinstall/e/d;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/fm/openinstall/e/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fm/openinstall/e/d;->e:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fm/openinstall/e/d;->e:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fm/openinstall/e/e;

    invoke-direct {v1, p0}, Lcom/fm/openinstall/e/e;-><init>(Lcom/fm/openinstall/e/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "LoopAliveTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fm/openinstall/e/d;->e:Z

    return-void
.end method
