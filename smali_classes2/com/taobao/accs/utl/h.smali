.class public Lcom/taobao/accs/utl/h;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static a()V
    .locals 6

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/utl/h;->c()I

    move-result v1

    if-lez v1, :cond_0

    .line 23
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ACCS_LOAD_SO"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "LoadSoFailUtil"

    const-string v3, "loadSoSuccess"

    const/4 v4, 0x2

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "fail times"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LoadSoFailUtil"

    const-string v3, "loadSoSuccess"

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b()V
    .locals 8

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ACCS_LOAD_SO"

    .line 37
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "load_so_times"

    .line 38
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 41
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "load_so_times"

    .line 42
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v2, "LoadSoFailUtil"

    const-string v5, "loadSoFail"

    const/4 v6, 0x2

    .line 45
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "times"

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 48
    invoke-static {v1}, Lcom/taobao/accs/utl/b;->k(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LoadSoFailUtil"

    const-string v3, "loadSoFail"

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c()I
    .locals 7

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ACCS_LOAD_SO"

    .line 64
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "load_so_times"

    .line 65
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "LoadSoFailUtil"

    const-string v3, "getSoFailTimes"

    const/4 v4, 0x2

    .line 66
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "times"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    :goto_0
    const-string v3, "LoadSoFailUtil"

    const-string v4, "getSoFailTimes"

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return v1
.end method
