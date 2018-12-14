.class public Lcom/mh/movie/core/mvp/ui/utils/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# static fields
.field private static final KEY_VERSION_EMUI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_VERSION_MIUI:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final KEY_VERSION_OPPO:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final KEY_VERSION_SMARTISAN:Ljava/lang/String; = "ro.smartisan.version"

.field private static final KEY_VERSION_VIVO:Ljava/lang/String; = "ro.vivo.os.version"

.field public static final ROM_EMUI:Ljava/lang/String; = "EMUI"

.field public static final ROM_FLYME:Ljava/lang/String; = "FLYME"

.field public static final ROM_MIUI:Ljava/lang/String; = "MIUI"

.field public static final ROM_OPPO:Ljava/lang/String; = "OPPO"

.field public static final ROM_QIKU:Ljava/lang/String; = "QIKU"

.field public static final ROM_SMARTISAN:Ljava/lang/String; = "SMARTISAN"

.field public static final ROM_VIVO:Ljava/lang/String; = "VIVO"

.field private static final TAG:Ljava/lang/String; = "Rom"

.field private static sName:Ljava/lang/String;

.field private static sVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;)Z
    .locals 2

    .line 75
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    .line 78
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MIUI"

    .line 79
    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v0, "ro.build.version.emui"

    .line 80
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EMUI"

    .line 81
    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "ro.build.version.opporom"

    .line 82
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OPPO"

    .line 83
    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "ro.vivo.os.version"

    .line 84
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VIVO"

    .line 85
    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "ro.smartisan.version"

    .line 86
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SMARTISAN"

    .line 87
    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_5
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "FLYME"

    .line 91
    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "unknown"

    .line 93
    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    .line 94
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    .line 97
    :goto_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 62
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    .line 64
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 104
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 114
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    const-string v3, "Rom"

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read prop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 114
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 116
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_2

    .line 114
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 116
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 117
    :cond_2
    :goto_4
    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 69
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    .line 71
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->sVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static is360()Z
    .locals 1

    const-string v0, "QIKU"

    .line 53
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "360"

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmui()Z
    .locals 1

    const-string v0, "EMUI"

    .line 33
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFlyme()Z
    .locals 1

    const-string v0, "FLYME"

    .line 49
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMiui()Z
    .locals 1

    const-string v0, "MIUI"

    .line 37
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOppo()Z
    .locals 1

    const-string v0, "OPPO"

    .line 45
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmartisan()Z
    .locals 1

    const-string v0, "SMARTISAN"

    .line 57
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVivo()Z
    .locals 1

    const-string v0, "VIVO"

    .line 41
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
