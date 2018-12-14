.class public Lcom/yanzhenjie/permission/source/ContextSource;
.super Lcom/yanzhenjie/permission/source/Source;
.source "ContextSource.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isShowRationalePermission(Ljava/lang/String;)Z
    .locals 7

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 70
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "shouldShowRequestPermissionRationale"

    const/4 v4, 0x1

    .line 76
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 78
    :cond_2
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 57
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000000

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    iget-object p2, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
