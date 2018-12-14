.class public Lanet/channel/d;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static volatile a:Z = true

.field public static b:Ljava/lang/String; = null

.field private static c:Landroid/content/Context; = null

.field private static d:Lanet/channel/entity/ENV; = null

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static volatile j:Lanet/channel/h/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    sput-object v0, Lanet/channel/d;->d:Lanet/channel/entity/ENV;

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 62
    sget-object v0, Lanet/channel/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 46
    sput-object p0, Lanet/channel/d;->c:Landroid/content/Context;

    if-eqz p0, :cond_2

    .line 48
    sget-object v0, Lanet/channel/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lanet/channel/h/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/d;->f:Ljava/lang/String;

    .line 52
    :cond_0
    sget-object v0, Lanet/channel/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {p0}, Lanet/channel/h/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lanet/channel/d;->e:Ljava/lang/String;

    :cond_1
    const-string p0, "awcn.GlobalAppRuntimeInfo"

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 57
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CurrentProcess"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lanet/channel/d;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "TargetProcess"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lanet/channel/d;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static a(Lanet/channel/entity/ENV;)V
    .locals 0

    .line 85
    sput-object p0, Lanet/channel/d;->d:Lanet/channel/entity/ENV;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 93
    sput-object p0, Lanet/channel/d;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 123
    sput-boolean p0, Lanet/channel/d;->a:Z

    return-void
.end method

.method public static b()Z
    .locals 2

    .line 70
    sget-object v0, Lanet/channel/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lanet/channel/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lanet/channel/d;->e:Ljava/lang/String;

    sget-object v1, Lanet/channel/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lanet/channel/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lanet/channel/entity/ENV;
    .locals 1

    .line 89
    sget-object v0, Lanet/channel/d;->d:Lanet/channel/entity/ENV;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lanet/channel/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lanet/channel/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lanet/channel/d;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lanet/channel/d;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lanet/channel/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lanet/channel/h/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/d;->i:Ljava/lang/String;

    .line 119
    :cond_0
    sget-object v0, Lanet/channel/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    .line 127
    sget-object v0, Lanet/channel/d;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 130
    :cond_0
    sget-boolean v0, Lanet/channel/d;->a:Z

    return v0
.end method

.method public static i()Lanet/channel/h/l;
    .locals 1

    .line 138
    sget-object v0, Lanet/channel/d;->j:Lanet/channel/h/l;

    return-object v0
.end method
