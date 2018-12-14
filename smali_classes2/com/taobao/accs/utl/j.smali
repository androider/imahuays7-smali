.class public Lcom/taobao/accs/utl/j;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/utl/j$a;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.taobao.orange.OrangeConfig"

    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/taobao/accs/utl/j;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/taobao/accs/utl/j;->a:Z

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 80
    sget-boolean v0, Lcom/taobao/accs/utl/j;->a:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "OrangeAdapter"

    const-string p1, "no orange sdk"

    const/4 v0, 0x0

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "OrangeAdapter"

    const-string v5, "saveTLogOffToSP context null"

    .line 185
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string v5, "ACCS_SDK"

    .line 188
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 190
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 191
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v5, "OrangeAdapter"

    const-string v6, "saveConfigToSP fail:"

    .line 194
    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "key"

    aput-object v8, v7, v4

    aput-object p1, v7, v2

    const-string v8, "value"

    aput-object v8, v7, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v5, v6, p0, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    const-string p0, "OrangeAdapter"

    const-string v5, "saveConfigToSP"

    .line 196
    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "key"

    aput-object v6, v3, v4

    aput-object p1, v3, v2

    const-string p1, "value"

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p0, v5, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 201
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "ACCS_SDK"

    .line 204
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 206
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 207
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v3, "OrangeAdapter"

    const-string v4, "saveConfigsToSP fail:"

    .line 213
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "configs"

    aput-object v6, v5, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, p0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    const-string p0, "OrangeAdapter"

    const-string v3, "saveConfigsToSP"

    .line 215
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "configs"

    aput-object v4, v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p0, v3, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_2
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 8

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 223
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ACCS_SDK"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 225
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pullup"

    .line 226
    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "OrangeAdapter"

    const-string v5, "savePullupInfo fail:"

    .line 229
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "pullup"

    aput-object v7, v6, v2

    aput-object p0, v6, v0

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    const-string v3, "OrangeAdapter"

    const-string v4, "savePullupInfo"

    .line 231
    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "pullup"

    aput-object v5, v1, v2

    aput-object p0, v1, v0

    invoke-static {v3, v4, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/taobao/accs/utl/j;->a:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    goto :goto_0

    :cond_0
    const-string p0, "OrangeAdapter"

    const-string p1, "no orange sdk"

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "accs"

    const-string v3, "main_function_enable"

    const-string v4, "true"

    .line 92
    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OrangeAdapter"

    const-string v4, "isAccsEnabled"

    .line 94
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    :goto_0
    const-string v3, "OrangeAdapter"

    const-string v4, "isAccsEnabled"

    const/4 v5, 0x2

    .line 96
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "enable"

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ACCS_SDK"

    .line 156
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 157
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "OrangeAdapter"

    const-string v2, "getConfigFromSP fail:"

    const/4 v3, 0x2

    .line 159
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "key"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-static {v1, v2, p0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move p0, p2

    :goto_0
    return p0
.end method

.method public static a(Z)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "default"

    if-eqz p0, :cond_0

    const-string p0, "accs"

    const-string v2, "tnet_log_off"

    const-string v3, "default"

    .line 121
    invoke-static {p0, v2, v3}, Lcom/taobao/accs/utl/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string p0, "default"

    .line 124
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 125
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object p0

    const-string v2, "tnet_log_off"

    invoke-static {p0, v2, v1}, Lcom/taobao/accs/utl/j;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_1

    .line 127
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :try_start_1
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tnet_log_off"

    invoke-static {v2, v3, p0}, Lcom/taobao/accs/utl/j;->b(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v6, v2

    move v2, p0

    move-object p0, v6

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "OrangeAdapter"

    const-string v4, "isTnetLogOff"

    .line 131
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, p0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move p0, v2

    :goto_1
    const-string v2, "OrangeAdapter"

    const-string v3, "isTnetLogOff"

    const/4 v4, 0x2

    .line 133
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "result"

    aput-object v5, v4, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "OrangeAdapter"

    const-string v5, "saveTLogOffToSP context null"

    .line 167
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string v5, "ACCS_SDK"

    .line 170
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 172
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 173
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v5, "OrangeAdapter"

    const-string v6, "saveConfigToSP fail:"

    .line 177
    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "key"

    aput-object v8, v7, v4

    aput-object p1, v7, v2

    const-string v8, "value"

    aput-object v8, v7, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v5, v6, p0, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    const-string p0, "OrangeAdapter"

    const-string v5, "saveConfigToSP"

    .line 179
    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "key"

    aput-object v6, v3, v4

    aput-object p1, v3, v2

    const-string p1, "value"

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p0, v5, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static b()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 103
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "smart_hb_enable"

    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/j;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OrangeAdapter"

    const-string v4, "isSmartHb"

    .line 106
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    :goto_0
    const-string v3, "OrangeAdapter"

    const-string v4, "isSmartHb"

    const/4 v5, 0x2

    .line 108
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "result"

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static c()Z
    .locals 6

    .line 138
    sget-boolean v0, Lcom/taobao/accs/client/a;->d:Z

    const/4 v1, 0x0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "election_enable"

    sget-boolean v4, Lcom/taobao/accs/client/a;->d:Z

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/j;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OrangeAdapter"

    const-string v4, "isElectionEnable"

    .line 142
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    if-nez v0, :cond_0

    const-string v2, "OrangeAdapter"

    const-string v3, "isElectionEnable"

    const/4 v4, 0x2

    .line 146
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "result"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 237
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ACCS_SDK"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pullup"

    .line 238
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OrangeAdapter"

    const-string v4, "getPullupInfo fail:"

    .line 240
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public static e()V
    .locals 4

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "accs"

    const-string v2, "tnet_log_off"

    const-string v3, "false"

    .line 248
    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tnet_log_off"

    .line 249
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accs"

    const-string v2, "election_enable"

    .line 251
    sget-boolean v3, Lcom/taobao/accs/client/a;->d:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "election_enable"

    .line 252
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accs"

    const-string v2, "heartbeat_smart_enable"

    const-string v3, "true"

    .line 254
    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smart_hb_enable"

    .line 255
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taobao/accs/utl/j;->a(Landroid/content/Context;Ljava/util/Map;)V

    const-string v0, "accs"

    const-string v1, "support_foreground_v"

    const/16 v2, 0x18

    .line 259
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "support_foreground_v"

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/j;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "accs"

    const-string v1, "pullup"

    const/4 v2, 0x0

    .line 263
    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/taobao/accs/utl/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static f()V
    .locals 3

    .line 292
    invoke-static {}, Lcom/taobao/accs/utl/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OrangeAdapter"

    const-string v2, "force enable service"

    .line 294
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ACCSManager;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "OrangeAdapter"

    const-string v2, "force disable service"

    .line 298
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ACCSManager;->e(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
