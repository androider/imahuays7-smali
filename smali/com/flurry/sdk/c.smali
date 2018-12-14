.class public Lcom/flurry/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static b:Z = false


# instance fields
.field private c:Lcom/flurry/sdk/h;

.field private d:Lcom/flurry/sdk/s;

.field private e:Lcom/flurry/sdk/c$a;

.field private f:Lcom/flurry/sdk/f;

.field private g:Lcom/flurry/sdk/n;

.field private h:J

.field private i:Lcom/flurry/sdk/l;

.field private final j:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/cv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/s;Lcom/flurry/sdk/c$a;Lcom/flurry/sdk/f;Lcom/flurry/sdk/n;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/flurry/sdk/c$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/c$2;-><init>(Lcom/flurry/sdk/c;)V

    iput-object v0, p0, Lcom/flurry/sdk/c;->j:Lcom/flurry/sdk/cw;

    .line 45
    iput-object p1, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    .line 46
    iput-object p2, p0, Lcom/flurry/sdk/c;->e:Lcom/flurry/sdk/c$a;

    .line 47
    iput-object p3, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    .line 48
    iput-object p4, p0, Lcom/flurry/sdk/c;->g:Lcom/flurry/sdk/n;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/c;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/flurry/sdk/c;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/c;Lcom/flurry/sdk/h;)Lcom/flurry/sdk/h;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/l;
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/flurry/sdk/c;->i:Lcom/flurry/sdk/l;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/f;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    return-object p0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/flurry/sdk/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    const-string v1, "Waiting for ID provider."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/c;->j:Lcom/flurry/sdk/cw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 9

    monitor-enter p0

    .line 91
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    const-string v1, "Fetching Config data."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    invoke-virtual {v0}, Lcom/flurry/sdk/s;->run()V

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    invoke-virtual {v0}, Lcom/flurry/sdk/s;->i()Lcom/flurry/sdk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    sget-object v1, Lcom/flurry/sdk/h;->a:Lcom/flurry/sdk/h;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 1151
    sget-object v0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    const-string v1, "Processing Config fetched data."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    .line 2199
    iget-object v0, v0, Lcom/flurry/sdk/s;->h:Ljava/lang/String;

    .line 1157
    sget-object v1, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON body: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1162
    iget-object v3, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    invoke-virtual {v3}, Lcom/flurry/sdk/s;->d()Ljava/lang/String;

    move-result-object v3

    .line 1163
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    .line 3075
    iget-object v4, v4, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    const-string v5, "requestGuid"

    .line 1164
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apiKey"

    .line 1165
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1166
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 1174
    :cond_0
    invoke-static {v1}, Lcom/flurry/sdk/g;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    const-string v4, "refreshInSeconds"

    .line 1175
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1176
    iget-object v1, p0, Lcom/flurry/sdk/c;->g:Lcom/flurry/sdk/n;

    .line 3526
    iput-wide v4, v1, Lcom/flurry/sdk/n;->e:J

    .line 1178
    iget-object v1, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    invoke-virtual {v1}, Lcom/flurry/sdk/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    .line 1179
    invoke-virtual {v1}, Lcom/flurry/sdk/s;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/c;->g:Lcom/flurry/sdk/n;

    .line 1180
    invoke-virtual {v1, v3}, Lcom/flurry/sdk/n;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1181
    sget-object v0, Lcom/flurry/sdk/h;->b:Lcom/flurry/sdk/h;

    iput-object v0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    goto/16 :goto_1

    .line 1183
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/c;->g:Lcom/flurry/sdk/n;

    iget-object v6, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    .line 1184
    invoke-virtual {v6}, Lcom/flurry/sdk/s;->f()Ljava/lang/String;

    iget-object v6, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    invoke-virtual {v6}, Lcom/flurry/sdk/s;->h()Ljava/lang/String;

    iget-object v6, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    invoke-virtual {v6}, Lcom/flurry/sdk/s;->c()Z

    move-result v6

    .line 1183
    invoke-virtual {v1, v3, v6}, Lcom/flurry/sdk/n;->a(Ljava/util/List;Z)Z

    .line 1194
    sget-object v1, Lcom/flurry/sdk/h;->a:Lcom/flurry/sdk/h;

    iput-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    .line 1197
    iget-object v1, p0, Lcom/flurry/sdk/c;->g:Lcom/flurry/sdk/n;

    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v3

    .line 4103
    iget-object v3, v3, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 1197
    iget-object v6, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    .line 1198
    invoke-virtual {v6}, Lcom/flurry/sdk/s;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 4560
    iget-object v6, v1, Lcom/flurry/sdk/n;->b:Ljava/util/Map;

    iget-object v7, v1, Lcom/flurry/sdk/n;->d:Ljava/util/Map;

    invoke-virtual {v1, v6, v7, v2}, Lcom/flurry/sdk/n;->a(Ljava/util/Map;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4536
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 4541
    invoke-static {v3, v0}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1199
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    iget-object v1, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    invoke-virtual {v1}, Lcom/flurry/sdk/s;->h()Ljava/lang/String;

    move-result-object v1

    .line 5125
    iget-object v3, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_5

    .line 5126
    iget-object v0, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lastETag"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1200
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    iget-object v1, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    invoke-virtual {v1}, Lcom/flurry/sdk/s;->e()Ljava/lang/String;

    move-result-object v1

    .line 5141
    iget-object v3, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_6

    .line 5142
    iget-object v0, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lastKeyId"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1201
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    iget-object v1, p0, Lcom/flurry/sdk/c;->d:Lcom/flurry/sdk/s;

    invoke-virtual {v1}, Lcom/flurry/sdk/s;->g()Ljava/lang/String;

    move-result-object v1

    .line 5157
    iget-object v3, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_7

    .line 5158
    iget-object v0, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lastRSA"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    :goto_1
    const/4 v0, 0x1

    .line 1205
    sput-boolean v0, Lcom/flurry/sdk/c;->b:Z

    .line 1207
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    iget-object v1, p0, Lcom/flurry/sdk/c;->g:Lcom/flurry/sdk/n;

    invoke-virtual {v1}, Lcom/flurry/sdk/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 5211
    iget-object v3, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_8

    .line 5212
    sget-object v3, Lcom/flurry/sdk/f;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Save serized variant IDs: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    iget-object v0, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "com.flurry.sdk.variant_ids"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1208
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    .line 6058
    iget-object v1, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_9

    .line 6059
    iget-object v1, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "appVersion"

    iget v0, v0, Lcom/flurry/sdk/f;->c:I

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1211
    :cond_9
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/flurry/sdk/f;->a(J)V

    .line 1212
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_a

    .line 6173
    iput-wide v6, v0, Lcom/flurry/sdk/f;->d:J

    goto :goto_2

    :cond_a
    const-wide/32 v6, 0x240c8400

    cmp-long v1, v4, v6

    if-lez v1, :cond_b

    .line 6175
    iput-wide v6, v0, Lcom/flurry/sdk/f;->d:J

    goto :goto_2

    :cond_b
    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-gez v1, :cond_c

    .line 6177
    iput-wide v6, v0, Lcom/flurry/sdk/f;->d:J

    goto :goto_2

    .line 6179
    :cond_c
    iput-wide v4, v0, Lcom/flurry/sdk/f;->d:J

    .line 6182
    :goto_2
    iget-object v1, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_d

    .line 6183
    iget-object v1, v0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "refreshFetch"

    iget-wide v4, v0, Lcom/flurry/sdk/f;->d:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1214
    :cond_d
    invoke-static {}, Lcom/flurry/sdk/e;->b()Lcom/flurry/sdk/o;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1215
    invoke-static {}, Lcom/flurry/sdk/e;->b()Lcom/flurry/sdk/o;

    iget-object v0, p0, Lcom/flurry/sdk/c;->g:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/n;)V

    goto :goto_4

    .line 1167
    :cond_e
    :goto_3
    new-instance v0, Lcom/flurry/sdk/h;

    sget-object v1, Lcom/flurry/sdk/h$a;->e:Lcom/flurry/sdk/h$a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Guid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", payload: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " APIKey: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", payload: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    .line 1170
    sget-object v0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Authentication error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0}, Lcom/flurry/sdk/c;->d()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 1222
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    const-string v3, "Fetch result error"

    invoke-static {v1, v3, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1223
    new-instance v1, Lcom/flurry/sdk/h;

    sget-object v3, Lcom/flurry/sdk/h$a;->g:Lcom/flurry/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1219
    sget-object v1, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    const-string v3, "Json parse error"

    invoke-static {v1, v3, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1220
    new-instance v1, Lcom/flurry/sdk/h;

    sget-object v3, Lcom/flurry/sdk/h$a;->d:Lcom/flurry/sdk/h$a;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    .line 1226
    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->b()V

    .line 1228
    invoke-static {}, Lcom/flurry/sdk/e;->b()Lcom/flurry/sdk/o;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1229
    invoke-static {}, Lcom/flurry/sdk/e;->b()Lcom/flurry/sdk/o;

    iget-object v0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    .line 7074
    iget-object v0, v0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/h$a;

    iget v0, v0, Lcom/flurry/sdk/h$a;->h:I

    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/flurry/sdk/c;->h:J

    const/4 v1, 0x0

    sub-long v7, v3, v5

    iget-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    invoke-virtual {v1}, Lcom/flurry/sdk/h;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1229
    invoke-static {v0, v7, v8, v1}, Lcom/flurry/sdk/o;->a(IJLjava/lang/String;)V

    .line 1233
    :cond_10
    iget-object v0, p0, Lcom/flurry/sdk/c;->e:Lcom/flurry/sdk/c$a;

    iget-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    invoke-interface {v0, v1, v2}, Lcom/flurry/sdk/c$a;->a(Lcom/flurry/sdk/h;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 98
    :cond_11
    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    sget-object v1, Lcom/flurry/sdk/h;->b:Lcom/flurry/sdk/h;

    if-ne v0, v1, :cond_12

    .line 99
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/flurry/sdk/f;->a(J)V

    .line 100
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->b()V

    .line 101
    iget-object v0, p0, Lcom/flurry/sdk/c;->e:Lcom/flurry/sdk/c$a;

    iget-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    invoke-interface {v0, v1, v2}, Lcom/flurry/sdk/c$a;->a(Lcom/flurry/sdk/h;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 103
    :cond_12
    :try_start_4
    sget-object v0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetch error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    invoke-virtual {v2}, Lcom/flurry/sdk/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/c;->i:Lcom/flurry/sdk/l;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    iget-object v0, v0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/h$a;

    sget-object v1, Lcom/flurry/sdk/h$a;->f:Lcom/flurry/sdk/h$a;

    if-ne v0, v1, :cond_13

    const-string v0, "FlurryUnknownCertificate"

    .line 105
    iget-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    iget-object v1, v1, Lcom/flurry/sdk/h;->c:Ljava/lang/String;

    sget-object v2, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_13
    invoke-static {}, Lcom/flurry/sdk/e;->b()Lcom/flurry/sdk/o;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 109
    invoke-static {}, Lcom/flurry/sdk/e;->b()Lcom/flurry/sdk/o;

    iget-object v0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    .line 8074
    iget-object v0, v0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/h$a;

    iget v0, v0, Lcom/flurry/sdk/h$a;->h:I

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/flurry/sdk/c;->h:J

    const/4 v5, 0x0

    sub-long v5, v1, v3

    iget-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    invoke-virtual {v1}, Lcom/flurry/sdk/h;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v5, v6, v1}, Lcom/flurry/sdk/o;->a(IJLjava/lang/String;)V

    .line 113
    :cond_14
    invoke-direct {p0}, Lcom/flurry/sdk/c;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 90
    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/flurry/sdk/c;)Z
    .locals 10

    .line 10119
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 11103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 10119
    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 10123
    :cond_0
    sget-object v0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Compare version: current="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    .line 12044
    iget v3, v3, Lcom/flurry/sdk/f;->c:I

    .line 10123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", recorded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    .line 10124
    invoke-virtual {v3}, Lcom/flurry/sdk/f;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10123
    invoke-static {v0, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10127
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->a()I

    move-result v0

    iget-object v2, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    .line 13044
    iget v2, v2, Lcom/flurry/sdk/f;->c:I

    if-ge v0, v2, :cond_1

    return v1

    .line 10131
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    .line 13163
    iget-wide v2, v0, Lcom/flurry/sdk/f;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 10134
    sget-boolean p0, Lcom/flurry/sdk/c;->b:Z

    if-nez p0, :cond_4

    return v1

    .line 10139
    :cond_2
    iget-object p0, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    .line 14099
    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const-string v0, "lastFetch"

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 10140
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v4

    cmp-long p0, v8, v2

    if-lez p0, :cond_4

    return v1

    .line 10145
    :cond_4
    sget-object p0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    const-string v0, "It does not meet any criterias for data fetch."

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/h;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 237
    sget-object v0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    const-string v1, "Retry fetching Config data."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/flurry/sdk/c;->i:Lcom/flurry/sdk/l;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/flurry/sdk/l;

    invoke-static {}, Lcom/flurry/sdk/l$a;->values()[Lcom/flurry/sdk/l$a;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-direct {v0, v3}, Lcom/flurry/sdk/l;-><init>(Lcom/flurry/sdk/l$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/c;->i:Lcom/flurry/sdk/l;

    goto :goto_1

    .line 242
    :cond_0
    new-instance v0, Lcom/flurry/sdk/l;

    iget-object v3, p0, Lcom/flurry/sdk/c;->i:Lcom/flurry/sdk/l;

    .line 9036
    iget-object v3, v3, Lcom/flurry/sdk/l;->a:Lcom/flurry/sdk/l$a;

    .line 10016
    invoke-virtual {v3}, Lcom/flurry/sdk/l$a;->ordinal()I

    move-result v4

    invoke-static {}, Lcom/flurry/sdk/l$a;->values()[Lcom/flurry/sdk/l$a;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 10018
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/l$a;->values()[Lcom/flurry/sdk/l$a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/flurry/sdk/l$a;->ordinal()I

    move-result v3

    add-int/2addr v3, v2

    aget-object v3, v4, v3

    .line 242
    :goto_0
    invoke-direct {v0, v3}, Lcom/flurry/sdk/l;-><init>(Lcom/flurry/sdk/l$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/c;->i:Lcom/flurry/sdk/l;

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/c;->i:Lcom/flurry/sdk/l;

    .line 10036
    iget-object v0, v0, Lcom/flurry/sdk/l;->a:Lcom/flurry/sdk/l$a;

    .line 245
    sget-object v3, Lcom/flurry/sdk/l$a;->d:Lcom/flurry/sdk/l$a;

    if-ne v0, v3, :cond_2

    .line 246
    iget-object v0, p0, Lcom/flurry/sdk/c;->e:Lcom/flurry/sdk/c$a;

    iget-object v2, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    invoke-interface {v0, v2, v1}, Lcom/flurry/sdk/c$a;->a(Lcom/flurry/sdk/h;Z)V

    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/c;->e:Lcom/flurry/sdk/c$a;

    iget-object v1, p0, Lcom/flurry/sdk/c;->c:Lcom/flurry/sdk/h;

    invoke-interface {v0, v1, v2}, Lcom/flurry/sdk/c$a;->a(Lcom/flurry/sdk/h;Z)V

    .line 253
    new-instance v0, Lcom/flurry/sdk/c$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/c$3;-><init>(Lcom/flurry/sdk/c;)V

    .line 260
    iget-object v1, p0, Lcom/flurry/sdk/c;->i:Lcom/flurry/sdk/l;

    .line 10040
    iget-object v2, v1, Lcom/flurry/sdk/l;->a:Lcom/flurry/sdk/l$a;

    iget v2, v2, Lcom/flurry/sdk/l$a;->e:I

    iget v1, v1, Lcom/flurry/sdk/l;->b:I

    add-int/2addr v2, v1

    invoke-static {}, Lcom/flurry/sdk/l;->a()I

    move-result v1

    sub-int/2addr v2, v1

    int-to-long v1, v2

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 261
    iget-object v3, p0, Lcom/flurry/sdk/c;->f:Lcom/flurry/sdk/f;

    invoke-virtual {v3, v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/c$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/flurry/sdk/c;->e:Lcom/flurry/sdk/c$a;

    return-object p0
.end method

.method static synthetic f(Lcom/flurry/sdk/c;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/flurry/sdk/c;->b()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/cw;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/flurry/sdk/c;->j:Lcom/flurry/sdk/cw;

    return-object p0
.end method

.method static synthetic h(Lcom/flurry/sdk/c;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/flurry/sdk/c;->c()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/c;->a:Ljava/lang/String;

    const-string v1, "Starting Config fetch."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/flurry/sdk/c$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/c$1;-><init>(Lcom/flurry/sdk/c;)V

    invoke-static {v0}, Lcom/flurry/sdk/s;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0

    throw v0
.end method
