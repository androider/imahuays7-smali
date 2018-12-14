.class public Lcom/jess/arms/a/d;
.super Landroid/support/multidex/MultiDexApplication;
.source "BaseApplication.java"

# interfaces
.implements Lcom/jess/arms/a/a;


# instance fields
.field private a:Lcom/jess/arms/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/jess/arms/b/a/a;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    const-string v1, "%s cannot be null"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-class v4, Lcom/jess/arms/a/a/c;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    instance-of v0, v0, Lcom/jess/arms/a/a;

    const-string v1, "%s must be implements %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-class v4, Lcom/jess/arms/a/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/jess/arms/c/g;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    check-cast v0, Lcom/jess/arms/a/a;

    invoke-interface {v0}, Lcom/jess/arms/a/a;->a()Lcom/jess/arms/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/jess/arms/a/a/c;

    invoke-direct {v0, p1}, Lcom/jess/arms/a/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    invoke-interface {v0, p1}, Lcom/jess/arms/a/a/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 64
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    invoke-interface {v0, p0}, Lcom/jess/arms/a/a/e;->a(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 74
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/jess/arms/a/d;->a:Lcom/jess/arms/a/a/e;

    invoke-interface {v0, p0}, Lcom/jess/arms/a/a/e;->b(Landroid/app/Application;)V

    :cond_0
    return-void
.end method
