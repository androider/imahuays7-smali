.class public Lorg/seamless/util/OS;
.super Ljava/lang/Object;
.source "OS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForHp()Z
    .locals 2

    const-string v0, "os.name"

    const-string v1, "hp"

    .line 27
    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForLinux()Z
    .locals 2

    const-string v0, "os.name"

    const-string v1, "linux"

    .line 23
    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForMac()Z
    .locals 2

    const-string v0, "os.name"

    const-string v1, "mac"

    .line 39
    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method public static checkForSolaris()Z
    .locals 2

    const-string v0, "os.name"

    const-string v1, "sun"

    .line 31
    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForWindows()Z
    .locals 2

    const-string v0, "os.name"

    const-string v1, "win"

    .line 35
    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
