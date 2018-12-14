.class public Lcom/umeng/message/l;
.super Ljava/lang/Object;
.source "UmengNotificationClickHandler.java"

# interfaces
.implements Lcom/umeng/message/g;


# static fields
.field private static final a:Ljava/lang/String; = "com.umeng.message.l"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Lcom/umeng/message/entity/a;)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 255
    iget-object v0, p2, Lcom/umeng/message/entity/a;->B:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    iget-object p2, p2, Lcom/umeng/message/entity/a;->B:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method private h(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 13

    .line 122
    :try_start_0
    iget-object v0, p2, Lcom/umeng/message/entity/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v1, ""

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 126
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "p"

    .line 127
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pu"

    .line 128
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ju"

    .line 129
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    .line 130
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "://"

    .line 134
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    .line 135
    array-length v7, v5

    if-ge v7, v6, :cond_1

    return-void

    :cond_1
    const/4 v7, 0x1

    .line 138
    aget-object v5, v5, v7

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 140
    array-length v8, v5

    if-ge v8, v7, :cond_2

    return-void

    :cond_2
    const/4 v8, 0x0

    .line 143
    aget-object v5, v5, v8

    const-string v9, ""

    if-ne v1, v7, :cond_4

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    .line 150
    array-length v10, v1

    if-lt v10, v6, :cond_3

    .line 151
    aget-object v10, v1, v7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v10, "&umessage="

    .line 153
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&thirdkey="

    .line 155
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v10

    invoke-virtual {v10}, Lcom/umeng/message/f;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    sget-object v10, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v10, Lcom/umeng/message/l;->a:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v10, v6, v7}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 160
    :try_start_2
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v2, v9

    .line 162
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v8

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 170
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    invoke-static {v0}, Lcom/umeng/message/a/a;->a(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v5, :cond_8

    .line 175
    :try_start_3
    invoke-static {p1, v2, v0}, Lcom/umeng/message/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, p2, v1}, Lcom/umeng/message/h;->a(Lcom/umeng/message/entity/a;I)V

    .line 180
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 182
    :cond_5
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v0

    const/16 v2, 0x3d

    invoke-virtual {v0, p2, v2}, Lcom/umeng/message/h;->a(Lcom/umeng/message/entity/a;I)V

    if-eqz v3, :cond_7

    .line 184
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    .line 187
    :cond_6
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :cond_7
    :goto_1
    return-void

    .line 196
    :cond_8
    :try_start_4
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v0, p2, v2}, Lcom/umeng/message/h;->a(Lcom/umeng/message/entity/a;I)V

    if-eqz v3, :cond_a

    .line 199
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2

    .line 202
    :cond_9
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :cond_a
    :goto_2
    return-void

    :cond_b
    :goto_3
    return-void

    :catch_1
    move-exception p1

    .line 210
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :catch_2
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 2

    .line 46
    :try_start_0
    iget-boolean v0, p2, Lcom/umeng/message/entity/a;->E:Z

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->b(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    return-void

    :cond_0
    const-string v0, "autoupdate"

    .line 51
    iget-object v1, p2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/f;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->c(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    return-void

    .line 58
    :cond_1
    iget-object v0, p2, Lcom/umeng/message/entity/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "notificationpullapp"

    .line 59
    iget-object v1, p2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "go_appurl"

    .line 60
    iget-object v1, p2, Lcom/umeng/message/entity/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/l;->h(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    return-void

    :cond_2
    const-string v0, "go_url"

    .line 66
    iget-object v1, p2, Lcom/umeng/message/entity/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->d(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    return-void

    :cond_3
    const-string v0, "go_activity"

    .line 69
    iget-object v1, p2, Lcom/umeng/message/entity/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->e(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    return-void

    :cond_4
    const-string v0, "go_custom"

    .line 72
    iget-object v1, p2, Lcom/umeng/message/entity/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->g(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    return-void

    :cond_5
    const-string v0, "go_app"

    .line 75
    iget-object v1, p2, Lcom/umeng/message/entity/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->f(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    return-void

    :cond_6
    const-string v0, "notificationpullapp"

    .line 83
    iget-object v1, p2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 87
    :cond_7
    iget-object v0, p2, Lcom/umeng/message/entity/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/umeng/message/entity/a;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->d(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    goto :goto_0

    .line 89
    :cond_8
    iget-object v0, p2, Lcom/umeng/message/entity/a;->s:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/umeng/message/entity/a;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->e(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    goto :goto_0

    .line 91
    :cond_9
    iget-object v0, p2, Lcom/umeng/message/entity/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/umeng/message/entity/a;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->g(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    goto :goto_0

    .line 94
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/l;->f(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 7

    .line 106
    :try_start_0
    invoke-static {p1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/message/b/h;->d()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "com.umeng.update.UmengUpdateAgent"

    .line 107
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.umeng.update.UpdateResponse"

    .line 108
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "showUpdateDialog"

    const/4 v3, 0x2

    .line 109
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 112
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    .line 113
    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v5

    .line 112
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 6

    .line 215
    iget-object v0, p2, Lcom/umeng/message/entity/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/umeng/message/entity/a;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/l;->a:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6253\u5f00\u94fe\u63a5: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/umeng/message/entity/a;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p2, Lcom/umeng/message/entity/a;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    invoke-direct {p0, v0, p2}, Lcom/umeng/message/l;->a(Landroid/content/Intent;Lcom/umeng/message/entity/a;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 221
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 1

    .line 226
    iget-object v0, p2, Lcom/umeng/message/entity/a;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/umeng/message/entity/a;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    invoke-direct {p0, v0, p2}, Lcom/umeng/message/l;->a(Landroid/content/Intent;Lcom/umeng/message/entity/a;)Landroid/content/Intent;

    .line 231
    iget-object p2, p2, Lcom/umeng/message/entity/a;->s:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 232
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 4

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 240
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p2, Lcom/umeng/message/l;->a:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u4e0d\u5230\u5e94\u7528: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p2, v2, v0}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 243
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 244
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    invoke-direct {p0, v0, p2}, Lcom/umeng/message/l;->a(Landroid/content/Intent;Lcom/umeng/message/entity/a;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 247
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p2, Lcom/umeng/message/l;->a:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u542f\u52a8\u5e94\u7528: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p2, v2, v0}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public g(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 0

    return-void
.end method
