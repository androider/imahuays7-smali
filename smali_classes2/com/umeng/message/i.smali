.class public Lcom/umeng/message/i;
.super Ljava/lang/Object;
.source "UmengAdHandler.java"

# interfaces
.implements Lcom/umeng/message/g;


# static fields
.field private static a:I = 0x40

.field private static final b:Ljava/lang/String; = "com.umeng.message.i"

.field private static c:Ljava/util/Date; = null

.field private static d:Ljava/lang/String; = "9999999999999"


# instance fields
.field private e:Lcom/umeng/message/entity/a;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/umeng/message/i;->e:Lcom/umeng/message/entity/a;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification;ZLcom/umeng/message/entity/a;)V
    .locals 5

    :try_start_0
    const-string v0, "notification"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 165
    iget v1, p0, Lcom/umeng/message/i;->f:I

    .line 167
    invoke-static {p1}, Lcom/umeng/message/b/e;->b(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/umeng/message/b/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/f;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/d;->b()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/umeng/message/h;->a(Z)V

    .line 184
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/umeng/message/h;->d(Lcom/umeng/message/entity/a;)V

    goto :goto_2

    .line 171
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/message/d;->b()I

    move-result p3

    if-lez p3, :cond_4

    .line 172
    :goto_1
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/message/c;->c()I

    move-result p3

    .line 173
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/d;->b()I

    move-result v2

    if-lt p3, v2, :cond_3

    .line 174
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/message/c;->b()Lcom/umeng/message/entity/b;

    move-result-object p3

    .line 175
    iget v2, p3, Lcom/umeng/message/entity/b;->a:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 176
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/umeng/message/h;->a(Z)V

    .line 177
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v2

    iget-object p3, p3, Lcom/umeng/message/entity/b;->b:Lcom/umeng/message/entity/a;

    invoke-virtual {v2, p3}, Lcom/umeng/message/h;->d(Lcom/umeng/message/entity/a;)V

    goto :goto_1

    .line 179
    :cond_3
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object p1

    new-instance p3, Lcom/umeng/message/entity/b;

    invoke-direct {p3, v1, p4}, Lcom/umeng/message/entity/b;-><init>(ILcom/umeng/message/entity/a;)V

    invoke-virtual {p1, p3}, Lcom/umeng/message/c;->a(Lcom/umeng/message/entity/b;)V

    .line 181
    :cond_4
    invoke-virtual {v0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 187
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Wakelock"
        }
    .end annotation

    :try_start_0
    const-string v0, "power"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 201
    new-instance v0, Lcom/umeng/message/i$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/i$1;-><init>(Lcom/umeng/message/i;Landroid/os/PowerManager;)V

    .line 205
    invoke-virtual {v0}, Lcom/umeng/message/i$1;->a()Z

    move-result v0

    goto :goto_0

    .line 208
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/i;->b:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "android os version < 7, skip checking screen on status"

    aput-object v4, v1, v3

    invoke-static {v0, v3, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 211
    :goto_0
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/i;->b:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5c4f\u5e55\u662f\u5426\u5904\u4e8e\u5f00\u542f\u72b6\u6001:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    if-nez v0, :cond_1

    const v0, 0x30000006

    const-string v1, "MyLock"

    .line 215
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v0, 0x2710

    .line 218
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 221
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 4

    .line 66
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/i;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "handleMessage"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->b(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    return-void
.end method

.method public a(Lcom/umeng/message/entity/a;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/umeng/message/i;->e:Lcom/umeng/message/entity/a;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 6

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 281
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    .line 283
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lcom/umeng/message/f;->h()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    .line 286
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/f;->i()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 288
    :goto_0
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v4

    .line 289
    invoke-virtual {v4}, Lcom/umeng/message/f;->j()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 291
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/f;->k()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 294
    :goto_1
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/message/f;->j()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 296
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/f;->k()I

    move-result v5

    add-int/2addr v4, v5

    .line 297
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/f;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 299
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->i()I

    move-result p1

    add-int/2addr v5, p1

    if-lt v4, v5, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    :goto_3
    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public b(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 7

    .line 71
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/i;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    iget-object v2, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/message/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->f(Landroid/content/Context;Lcom/umeng/message/entity/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x14

    const/4 v5, 0x7

    if-eqz v2, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    iget-object v2, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/16 v2, 0x16

    iget-object v6, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v2, v6, :cond_2

    iget-object v2, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    const-string v6, "u"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v2

    iget-object v6, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/umeng/message/d;->d(Ljava/lang/String;)V

    .line 95
    iget-object v2, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 97
    :cond_2
    sget-object v2, Lcom/umeng/message/i;->d:Ljava/lang/String;

    :goto_1
    const-string v3, ""

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 107
    :goto_2
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    iget-object v2, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/message/d;->c(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->j(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 110
    iget v2, v0, Landroid/app/Notification;->icon:I

    :cond_5
    if-nez v0, :cond_6

    return-void

    .line 136
    :cond_6
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    iput v2, p0, Lcom/umeng/message/i;->f:I

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->c(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->d(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 141
    iput-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 142
    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->e(Landroid/content/Context;Lcom/umeng/message/entity/a;)I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_8

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->i(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->i(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_7
    if-eqz v3, :cond_8

    xor-int/lit8 v2, v2, 0x1

    .line 153
    :cond_8
    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 155
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/umeng/message/i;->a(Landroid/content/Context;Landroid/app/Notification;ZLcom/umeng/message/entity/a;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/PendingIntent;
    .locals 3

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "MSG"

    .line 232
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTION"

    const/16 v2, 0xa

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MESSAGE_ID"

    .line 236
    iget-object v2, p2, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID"

    .line 239
    iget v2, p0, Lcom/umeng/message/i;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TASK_ID"

    .line 242
    iget-object p2, p2, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int p2, v1

    const/high16 v1, 0x10000000

    .line 246
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/PendingIntent;
    .locals 7

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "MSG"

    .line 257
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTION"

    const/16 v2, 0xb

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MESSAGE_ID"

    .line 261
    iget-object v2, p2, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID"

    .line 264
    iget v2, p0, Lcom/umeng/message/i;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TASK_ID"

    .line 267
    iget-object p2, p2, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    long-to-int p2, v5

    const/high16 v1, 0x10000000

    .line 272
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Lcom/umeng/message/entity/a;)I
    .locals 10

    .line 307
    invoke-virtual {p0, p1}, Lcom/umeng/message/i;->a(Landroid/content/Context;)Z

    move-result v0

    .line 309
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/d;->p()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    mul-long v1, v1, v3

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 315
    :cond_0
    sget-object v0, Lcom/umeng/message/i;->c:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sget-object v0, Lcom/umeng/message/i;->c:Ljava/util/Date;

    .line 317
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v8, v4, v6

    cmp-long v0, v8, v1

    if-gez v0, :cond_1

    goto/16 :goto_5

    .line 321
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->s()I

    move-result v0

    .line 322
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/i;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playVibrate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    invoke-static {v1, v5, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    if-ne v0, v2, :cond_2

    :goto_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    if-eq v0, v5, :cond_3

    .line 327
    iget-boolean v0, p2, Lcom/umeng/message/entity/a;->i:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 333
    :goto_1
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/d;->t()I

    move-result v1

    .line 334
    sget-object v4, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v4, Lcom/umeng/message/i;->b:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playLights:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    if-ne v1, v2, :cond_4

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    if-eq v1, v5, :cond_5

    .line 339
    iget-boolean v1, p2, Lcom/umeng/message/entity/a;->j:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x4

    .line 345
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/d;->u()I

    move-result v1

    .line 346
    sget-object v4, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v4, Lcom/umeng/message/i;->b:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playSound:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    if-ne v1, v2, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_6
    :goto_3
    move v3, v0

    goto :goto_4

    :cond_7
    if-eq v1, v5, :cond_6

    .line 351
    iget-boolean v1, p2, Lcom/umeng/message/entity/a;->k:Z

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 357
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/i;->c:Ljava/util/Date;

    .line 358
    iget-boolean p2, p2, Lcom/umeng/message/entity/a;->l:Z

    if-eqz p2, :cond_8

    .line 359
    invoke-direct {p0, p1}, Lcom/umeng/message/i;->b(Landroid/content/Context;)V

    :cond_8
    :goto_5
    return v3
.end method

.method public f(Landroid/content/Context;Lcom/umeng/message/entity/a;)Z
    .locals 3

    .line 368
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "body"

    .line 369
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    .line 370
    iget-object v2, p2, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_id"

    .line 371
    iget-object p2, p2, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 375
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroid/content/Context;Lcom/umeng/message/entity/a;)I
    .locals 6

    const/4 v0, -0x1

    .line 406
    :try_start_0
    iget-object v1, p2, Lcom/umeng/message/entity/a;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v1

    iget-object p2, p2, Lcom/umeng/message/entity/a;->r:Ljava/lang/String;

    .line 408
    invoke-virtual {v1, p2}, Lcom/umeng/message/a/c;->c(Ljava/lang/String;)I

    move-result p2

    move v0, p2

    :cond_0
    if-gez v0, :cond_1

    .line 412
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object p2

    const-string v1, "umeng_push_notification_default_small_icon"

    .line 413
    invoke-virtual {p2, v1}, Lcom/umeng/message/a/c;->c(Ljava/lang/String;)I

    move-result p2

    move v0, p2

    :cond_1
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 417
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/i;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, p2, [Ljava/lang/String;

    const-string v5, "\u6ca1\u6709\u81ea\u5b9a\u4e49\u56fe\u6807\uff0c\u6539\u7528\u5e94\u7528\u56fe\u6807"

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    move v0, p1

    :cond_2
    if-gez v0, :cond_3

    .line 422
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/i;->b:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/String;

    const-string v2, "\u627e\u4e0d\u5230\u9002\u5f53\u7684\u901a\u77e5\u56fe\u6807\uff0c\u8bf7\u786e\u4fdd\u60a8\u4e3a\u6b64\u901a\u77e5\u6307\u5b9a\u4e86\u4e00\u4e2a\u56fe\u6807\uff0c\u6216\u8005\u5e94\u7528\u5df2\u7ecf\u5b9a\u4e49\u4e86\u4e00\u4e2a\u56fe\u6807"

    aput-object v2, p2, v1

    invoke-static {p1, v1, p2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 425
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public h(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "notificationpullapp"

    .line 436
    iget-object v2, p2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p2, Lcom/umeng/message/entity/a;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 441
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "img"

    .line 442
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 449
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/umeng/message/entity/a;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :catch_0
    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    .line 456
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/i;->b:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bmp is null"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 458
    iget-object v3, p2, Lcom/umeng/message/entity/a;->C:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 459
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v2

    iget-object p2, p2, Lcom/umeng/message/entity/a;->C:Ljava/lang/String;

    .line 460
    invoke-virtual {v2, p2}, Lcom/umeng/message/a/c;->c(Ljava/lang/String;)I

    move-result v2

    :cond_2
    if-gez v2, :cond_3

    .line 464
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object p2

    const-string v2, "umeng_push_notification_default_large_icon"

    .line 465
    invoke-virtual {p2, v2}, Lcom/umeng/message/a/c;->c(Ljava/lang/String;)I

    move-result v2

    :cond_3
    if-lez v2, :cond_4

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 469
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    return-object v1

    :catch_1
    move-exception p1

    .line 477
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public i(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    .line 490
    :try_start_0
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/umeng/message/entity/a;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    if-nez v1, :cond_4

    const/4 v2, -0x1

    .line 499
    iget-object v3, p2, Lcom/umeng/message/entity/a;->p:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 500
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v2

    iget-object p2, p2, Lcom/umeng/message/entity/a;->p:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/umeng/message/a/c;->f(Ljava/lang/String;)I

    move-result v2

    :cond_2
    if-gez v2, :cond_3

    .line 504
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object p2

    const-string v2, "umeng_push_notification_default_sound"

    invoke-virtual {p2, v2}, Lcom/umeng/message/a/c;->f(Ljava/lang/String;)I

    move-result v2

    :cond_3
    if-lez v2, :cond_4

    .line 508
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 513
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v0
.end method

.method public j(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/Notification;
    .locals 8

    .line 527
    iget-object v0, p2, Lcom/umeng/message/entity/a;->n:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 533
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "t"

    .line 534
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 536
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 538
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v3

    const-string v4, "upush_notification"

    invoke-virtual {v3, v4}, Lcom/umeng/message/a/c;->e(Ljava/lang/String;)I

    move-result v3

    .line 539
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 554
    :pswitch_0
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v0

    const-string v7, "notification_large_icon2"

    invoke-virtual {v0, v7}, Lcom/umeng/message/a/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->h(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 555
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v0

    const-string v7, "upush_notification1"

    invoke-virtual {v0, v7}, Lcom/umeng/message/a/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 556
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v0

    const-string v6, "upush_notification2"

    invoke-virtual {v0, v6}, Lcom/umeng/message/a/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 557
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p2, Lcom/umeng/message/entity/a;->f:Ljava/lang/String;

    .line 558
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 559
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->g(Landroid/content/Context;Lcom/umeng/message/entity/a;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 560
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 562
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 542
    :pswitch_1
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v0

    const-string v7, "notification_large_icon1"

    invoke-virtual {v0, v7}, Lcom/umeng/message/a/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->h(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 543
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v0

    const-string v7, "upush_notification1"

    invoke-virtual {v0, v7}, Lcom/umeng/message/a/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 544
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v0

    const-string v5, "upush_notification2"

    invoke-virtual {v0, v5}, Lcom/umeng/message/a/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 545
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v0

    const-string v5, "notification_title"

    invoke-virtual {v0, v5}, Lcom/umeng/message/a/c;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p2, Lcom/umeng/message/entity/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 546
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v0

    const-string v5, "notification_text"

    invoke-virtual {v0, v5}, Lcom/umeng/message/a/c;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p2, Lcom/umeng/message/entity/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p2, Lcom/umeng/message/entity/a;->f:Ljava/lang/String;

    .line 548
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/i;->g(Landroid/content/Context;Lcom/umeng/message/entity/a;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 550
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 551
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 569
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object v1

    :cond_1
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
