.class public Lcom/taobao/a/a/a;
.super Ljava/lang/Object;
.source "AdapterForTLog.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.taobao.tao.log.TLog"

    .line 18
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/taobao/a/a/a;->a:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/taobao/a/a/a;->a:Z

    :goto_0
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-static {v0}, Lcom/taobao/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 220
    sget-boolean v0, Lcom/taobao/a/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 221
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getTLogControler()Lcom/taobao/tao/log/ITLogController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-interface {v0, p0}, Lcom/taobao/tao/log/ITLogController;->getLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    :cond_0
    sget-object p0, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {p0}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_1
    sget-object p0, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {p0}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "L"

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    sget-boolean v0, Lcom/taobao/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    sget-boolean v0, Lcom/taobao/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    sget-boolean v0, Lcom/taobao/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 130
    sget-boolean v0, Lcom/taobao/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    sget-boolean v0, Lcom/taobao/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    sget-boolean v0, Lcom/taobao/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
