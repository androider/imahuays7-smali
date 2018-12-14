.class public Lme/jessyan/autosize/InitProvider;
.super Landroid/content/ContentProvider;
.source "InitProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    .line 35
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lme/jessyan/autosize/AutoSizeConfig;->setLog(Z)Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lme/jessyan/autosize/InitProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-virtual {v0, v2}, Lme/jessyan/autosize/AutoSizeConfig;->init(Landroid/app/Application;)Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v2}, Lme/jessyan/autosize/AutoSizeConfig;->setUseDeviceSize(Z)Lme/jessyan/autosize/AutoSizeConfig;

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
