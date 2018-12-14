.class public Lcom/fm/openinstall/e/b;
.super Lcom/fm/openinstall/e/a;


# instance fields
.field private c:Lcom/fm/openinstall/f/c;

.field private d:Landroid/app/Application;

.field private e:I

.field private f:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fm/openinstall/e/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fm/openinstall/e/a;-><init>(Landroid/content/Context;Lcom/fm/openinstall/e/f;)V

    const-class p2, Lcom/fm/openinstall/e/b;

    invoke-static {p2}, Lcom/fm/openinstall/f/c;->a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;

    move-result-object p2

    iput-object p2, p0, Lcom/fm/openinstall/e/b;->c:Lcom/fm/openinstall/f/c;

    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/app/Application;

    :goto_0
    iput-object p1, p0, Lcom/fm/openinstall/e/b;->d:Landroid/app/Application;

    return-void

    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/fm/openinstall/e/b;)I
    .locals 0

    iget p0, p0, Lcom/fm/openinstall/e/b;->e:I

    return p0
.end method

.method static synthetic b(Lcom/fm/openinstall/e/b;)I
    .locals 2

    iget v0, p0, Lcom/fm/openinstall/e/b;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fm/openinstall/e/b;->e:I

    return v0
.end method

.method static synthetic c(Lcom/fm/openinstall/e/b;)I
    .locals 2

    iget v0, p0, Lcom/fm/openinstall/e/b;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fm/openinstall/e/b;->e:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/fm/openinstall/e/b;->d:Landroid/app/Application;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fm/openinstall/e/b;->e:I

    new-instance v0, Lcom/fm/openinstall/e/c;

    invoke-direct {v0, p0}, Lcom/fm/openinstall/e/c;-><init>(Lcom/fm/openinstall/e/b;)V

    iput-object v0, p0, Lcom/fm/openinstall/e/b;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    iget-object v0, p0, Lcom/fm/openinstall/e/b;->d:Landroid/app/Application;

    iget-object v1, p0, Lcom/fm/openinstall/e/b;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public b()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/fm/openinstall/e/b;->d:Landroid/app/Application;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fm/openinstall/e/b;->e:I

    iget-object v0, p0, Lcom/fm/openinstall/e/b;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fm/openinstall/e/b;->d:Landroid/app/Application;

    iget-object v1, p0, Lcom/fm/openinstall/e/b;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fm/openinstall/e/b;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_1
    return-void
.end method
