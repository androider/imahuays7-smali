.class final Lcom/flurry/sdk/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/e;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/e;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 141
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 1103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 149
    invoke-static {v2}, Lcom/flurry/sdk/u;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {}, Lcom/flurry/sdk/e;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cached Data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    .line 153
    iget-object v3, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v3}, Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/f;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    .line 154
    invoke-static {v4}, Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/f;

    move-result-object v4

    .line 1147
    iget-object v5, v4, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v4, v4, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const-string v5, "lastRSA"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    :cond_0
    invoke-static {v3, v2, v6}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v3}, Lcom/flurry/sdk/e;->b(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/n;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2073
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/flurry/sdk/g;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 2074
    invoke-virtual {v3, v2}, Lcom/flurry/sdk/n;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2076
    :try_start_2
    sget-object v4, Lcom/flurry/sdk/n;->a:Ljava/lang/String;

    const-string v5, "Cached variants parsing error: "

    invoke-static {v4, v5, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2080
    :cond_1
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/e;->b()Lcom/flurry/sdk/o;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2081
    invoke-static {}, Lcom/flurry/sdk/e;->b()Lcom/flurry/sdk/o;

    invoke-static {v3}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/n;)V

    goto/16 :goto_1

    .line 157
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/e;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Incorrect signature for cache."

    invoke-static {v2, v3}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 2103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 158
    invoke-static {v2}, Lcom/flurry/sdk/u;->c(Landroid/content/Context;)Z

    .line 159
    iget-object v2, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v2}, Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/f;

    move-result-object v2

    .line 3085
    sget-object v3, Lcom/flurry/sdk/f;->a:Ljava/lang/String;

    const-string v4, "Clear all ConfigMeta data."

    invoke-static {v3, v4}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    invoke-virtual {v2}, Lcom/flurry/sdk/f;->b()V

    .line 4052
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_3

    .line 4053
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "appVersion"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4103
    :cond_3
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_4

    .line 4104
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lastFetch"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4119
    :cond_4
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_5

    .line 4120
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lastETag"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4135
    :cond_5
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_6

    .line 4136
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lastKeyId"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4151
    :cond_6
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_7

    .line 4152
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lastRSA"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4200
    :cond_7
    iget-object v3, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_8

    .line 4201
    iget-object v2, v2, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.flurry.sdk.variant_ids"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v2}, Lcom/flurry/sdk/e;->c(Lcom/flurry/sdk/e;)V

    .line 167
    iget-object v2, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v2}, Lcom/flurry/sdk/e;->b(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/n;->d()I

    move-result v2

    if-lez v2, :cond_b

    .line 169
    iget-object v2, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v2}, Lcom/flurry/sdk/e;->b(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/n;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/k;

    .line 170
    iget-object v4, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v4}, Lcom/flurry/sdk/e;->d(Lcom/flurry/sdk/e;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v4, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-virtual {v4, v3, v1}, Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/k;Z)V

    goto :goto_2

    :cond_9
    return-void

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    .line 163
    :try_start_3
    invoke-static {}, Lcom/flurry/sdk/e;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception!"

    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    iget-object v2, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v2}, Lcom/flurry/sdk/e;->c(Lcom/flurry/sdk/e;)V

    .line 167
    iget-object v2, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v2}, Lcom/flurry/sdk/e;->b(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/n;->d()I

    move-result v2

    if-lez v2, :cond_b

    .line 169
    iget-object v2, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v2}, Lcom/flurry/sdk/e;->b(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/n;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/k;

    .line 170
    iget-object v4, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v4}, Lcom/flurry/sdk/e;->d(Lcom/flurry/sdk/e;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v4, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-virtual {v4, v3, v1}, Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/k;Z)V

    goto :goto_3

    :cond_a
    return-void

    :cond_b
    return-void

    .line 165
    :goto_4
    iget-object v3, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v3}, Lcom/flurry/sdk/e;->c(Lcom/flurry/sdk/e;)V

    .line 167
    iget-object v3, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v3}, Lcom/flurry/sdk/e;->b(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/n;->d()I

    move-result v3

    if-lez v3, :cond_c

    .line 169
    iget-object v3, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v3}, Lcom/flurry/sdk/e;->b(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/n;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/k;

    .line 170
    iget-object v5, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-static {v5}, Lcom/flurry/sdk/e;->d(Lcom/flurry/sdk/e;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v5, p0, Lcom/flurry/sdk/e$1;->a:Lcom/flurry/sdk/e;

    invoke-virtual {v5, v4, v1}, Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/k;Z)V

    goto :goto_5

    .line 172
    :cond_c
    throw v2
.end method
