.class public Lcom/umeng/message/k;
.super Ljava/lang/Object;
.source "UmengMessageHandler.java"

# interfaces
.implements Lcom/umeng/message/g;


# static fields
.field private static a:I = 0x40

.field private static final b:Ljava/lang/String; = "com.umeng.message.k"

.field private static c:Ljava/util/Date; = null

.field private static d:Ljava/lang/String; = "9999999999999"

.field private static g:Z = false


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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/umeng/message/k;->e:Lcom/umeng/message/entity/a;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification;ZLcom/umeng/message/entity/a;)V
    .locals 5

    :try_start_0
    const-string v0, "notification"

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 215
    iget v1, p0, Lcom/umeng/message/k;->f:I

    .line 217
    invoke-static {p1}, Lcom/umeng/message/b/e;->b(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/umeng/message/b/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/f;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/d;->b()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/umeng/message/h;->a(Z)V

    .line 236
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/umeng/message/h;->d(Lcom/umeng/message/entity/a;)V

    goto :goto_3

    .line 221
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/message/d;->b()I

    move-result p3

    if-lez p3, :cond_4

    .line 222
    :goto_1
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/message/c;->c()I

    move-result p3

    .line 223
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/d;->b()I

    move-result v2

    if-lt p3, v2, :cond_3

    .line 224
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/message/c;->b()Lcom/umeng/message/entity/b;

    move-result-object p3

    .line 225
    iget v2, p3, Lcom/umeng/message/entity/b;->a:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 226
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/umeng/message/h;->a(Z)V

    .line 227
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v2

    iget-object p3, p3, Lcom/umeng/message/entity/b;->b:Lcom/umeng/message/entity/a;

    invoke-virtual {v2, p3}, Lcom/umeng/message/h;->d(Lcom/umeng/message/entity/a;)V

    goto :goto_1

    .line 229
    :cond_3
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object p1

    new-instance p3, Lcom/umeng/message/entity/b;

    invoke-direct {p3, v1, p4}, Lcom/umeng/message/entity/b;-><init>(ILcom/umeng/message/entity/a;)V

    invoke-virtual {p1, p3}, Lcom/umeng/message/c;->a(Lcom/umeng/message/entity/b;)V

    goto :goto_2

    .line 231
    :cond_4
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object p1

    new-instance p3, Lcom/umeng/message/entity/b;

    invoke-direct {p3, v1, p4}, Lcom/umeng/message/entity/b;-><init>(ILcom/umeng/message/entity/a;)V

    invoke-virtual {p1, p3}, Lcom/umeng/message/c;->a(Lcom/umeng/message/entity/b;)V

    .line 233
    :goto_2
    invoke-virtual {v0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 239
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/umeng/message/entity/a;)Z
    .locals 1

    .line 433
    invoke-virtual {p0, p1, p3}, Lcom/umeng/message/k;->h(Landroid/content/Context;Lcom/umeng/message/entity/a;)I

    move-result v0

    .line 434
    invoke-virtual {p0, p1, p3}, Lcom/umeng/message/k;->i(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 439
    :cond_0
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 442
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    return p1
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 202
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->t()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Default"

    return-object p1

    :cond_0
    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Wakelock"
        }
    .end annotation

    :try_start_0
    const-string v0, "power"

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    .line 253
    new-instance v0, Lcom/umeng/message/k$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/k$1;-><init>(Lcom/umeng/message/k;Landroid/os/PowerManager;)V

    .line 257
    invoke-virtual {v0}, Lcom/umeng/message/k$1;->a()Z

    move-result v0

    goto :goto_0

    .line 260
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/k;->b:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v5, "android os version < 7, skip checking screen on status"

    aput-object v5, v1, v4

    invoke-static {v0, v3, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 263
    :goto_0
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/k;->b:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5c4f\u5e55\u5f00\u542f\u72b6\u6001\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    if-nez v0, :cond_1

    const v0, 0x30000006

    const-string v1, "MyLock"

    .line 267
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v0, 0x2710

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 273
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private n(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 5

    :try_start_0
    const-string v0, "notification"

    .line 576
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/c;->d()Ljava/util/LinkedList;

    move-result-object v1

    .line 581
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 582
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/message/entity/b;

    .line 584
    iget-object v3, p2, Lcom/umeng/message/entity/a;->t:Ljava/lang/String;

    iget-object v4, v2, Lcom/umeng/message/entity/b;->b:Lcom/umeng/message/entity/a;

    iget-object v4, v4, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    iget v1, v2, Lcom/umeng/message/entity/b;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 586
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/message/c;->b(Lcom/umeng/message/entity/b;)V

    .line 587
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/umeng/message/h;->e(Lcom/umeng/message/entity/a;)V

    return-void

    .line 591
    :cond_2
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/umeng/message/h;->f(Lcom/umeng/message/entity/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    :catch_0
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/k;->b:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "\u901a\u77e5\u53ec\u56de\u5f02\u5e38"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, v1, p2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 2

    const-string v0, "notification"

    .line 68
    iget-object v1, p2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->b(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    goto :goto_0

    :cond_0
    const-string v0, "custom"

    .line 70
    iget-object v1, p2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/h;->a(Z)V

    .line 72
    iget-object v0, p2, Lcom/umeng/message/entity/a;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/k;->n(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->c(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/umeng/message/entity/a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/umeng/message/k;->e:Lcom/umeng/message/entity/a;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 6

    .line 332
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    .line 335
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lcom/umeng/message/f;->h()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    .line 338
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

    .line 340
    :goto_0
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v4

    .line 341
    invoke-virtual {v4}, Lcom/umeng/message/f;->j()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 343
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

    .line 346
    :goto_1
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/message/f;->j()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 348
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/f;->k()I

    move-result v5

    add-int/2addr v4, v5

    .line 349
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/f;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 351
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
    .locals 8

    .line 81
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/k;->b:Ljava/lang/String;

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

    .line 86
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    iget-object v2, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/message/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->g(Landroid/content/Context;Lcom/umeng/message/entity/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x14

    const/4 v5, 0x7

    if-eqz v2, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
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

    .line 102
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v2

    iget-object v6, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/umeng/message/d;->d(Ljava/lang/String;)V

    .line 103
    iget-object v2, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 105
    :cond_2
    sget-object v2, Lcom/umeng/message/k;->d:Ljava/lang/String;

    :goto_1
    const-string v3, ""

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    .line 111
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_2

    .line 114
    :cond_4
    :goto_3
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    iget-object v2, p2, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/message/d;->c(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->m(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 117
    iget v2, v0, Landroid/app/Notification;->icon:I

    :cond_5
    if-nez v0, :cond_c

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_7

    .line 128
    sget-boolean v0, Lcom/umeng/message/k;->g:Z

    if-nez v0, :cond_6

    .line 129
    sput-boolean v1, Lcom/umeng/message/k;->g:Z

    .line 130
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "upush_default"

    invoke-direct {p0, p1}, Lcom/umeng/message/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-direct {v0, v2, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    .line 132
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_6

    .line 135
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 138
    :cond_6
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v2, "upush_default"

    invoke-direct {v0, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 140
    :cond_7
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    :goto_4
    iget-object v2, p2, Lcom/umeng/message/entity/a;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_8

    .line 144
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->k(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 147
    :cond_8
    iget-object v2, p2, Lcom/umeng/message/entity/a;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->h(Landroid/content/Context;Lcom/umeng/message/entity/a;)I

    move-result v2

    if-gez v2, :cond_9

    return-void

    .line 152
    :cond_9
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v6

    const-string v7, "upush_bar_image_notification"

    invoke-virtual {v6, v7}, Lcom/umeng/message/a/c;->d(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 153
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v5

    const-string v6, "notification_bar_image"

    invoke-virtual {v5, v6}, Lcom/umeng/message/a/c;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->j(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 154
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p2, Lcom/umeng/message/entity/a;->f:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_5

    .line 159
    :cond_a
    invoke-direct {p0, p1, v0, p2}, Lcom/umeng/message/k;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/umeng/message/entity/a;)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 162
    :cond_b
    iget-object v2, p2, Lcom/umeng/message/entity/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p2, Lcom/umeng/message/entity/a;->h:Ljava/lang/String;

    .line 163
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p2, Lcom/umeng/message/entity/a;->f:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 177
    :goto_5
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 181
    :cond_c
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/umeng/message/k;->f:I

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->d(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->e(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 186
    iput-object v2, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 187
    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->f(Landroid/content/Context;Lcom/umeng/message/entity/a;)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_e

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->l(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/k;->l(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_d
    if-eqz v2, :cond_e

    xor-int/lit8 v1, v1, 0x1

    .line 196
    :cond_e
    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 198
    invoke-direct {p0, p1, v0, v4, p2}, Lcom/umeng/message/k;->a(Landroid/content/Context;Landroid/app/Notification;ZLcom/umeng/message/entity/a;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/PendingIntent;
    .locals 3

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "MSG"

    .line 284
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTION"

    const/16 v2, 0xa

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MESSAGE_ID"

    .line 288
    iget-object v2, p2, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID"

    .line 291
    iget v2, p0, Lcom/umeng/message/k;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TASK_ID"

    .line 294
    iget-object p2, p2, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int p2, v1

    const/high16 v1, 0x10000000

    .line 298
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/PendingIntent;
    .locals 7

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "MSG"

    .line 309
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTION"

    const/16 v2, 0xb

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MESSAGE_ID"

    .line 313
    iget-object v2, p2, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID"

    .line 316
    iget v2, p0, Lcom/umeng/message/k;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TASK_ID"

    .line 319
    iget-object p2, p2, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    long-to-int p2, v5

    const/high16 v1, 0x10000000

    .line 324
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/content/Context;Lcom/umeng/message/entity/a;)I
    .locals 10

    .line 359
    invoke-virtual {p0, p1}, Lcom/umeng/message/k;->a(Landroid/content/Context;)Z

    move-result v0

    .line 361
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

    .line 367
    :cond_0
    sget-object v0, Lcom/umeng/message/k;->c:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sget-object v0, Lcom/umeng/message/k;->c:Ljava/util/Date;

    .line 369
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v8, v4, v6

    cmp-long v0, v8, v1

    if-gez v0, :cond_1

    goto/16 :goto_5

    .line 373
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->s()I

    move-result v0

    .line 374
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/k;->b:Ljava/lang/String;

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

    .line 379
    iget-boolean v0, p2, Lcom/umeng/message/entity/a;->i:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 385
    :goto_1
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/d;->t()I

    move-result v1

    .line 386
    sget-object v4, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v4, Lcom/umeng/message/k;->b:Ljava/lang/String;

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

    .line 391
    iget-boolean v1, p2, Lcom/umeng/message/entity/a;->j:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x4

    .line 397
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/d;->u()I

    move-result v1

    .line 398
    sget-object v4, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v4, Lcom/umeng/message/k;->b:Ljava/lang/String;

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

    .line 403
    iget-boolean v1, p2, Lcom/umeng/message/entity/a;->k:Z

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 409
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/k;->c:Ljava/util/Date;

    .line 410
    iget-boolean p2, p2, Lcom/umeng/message/entity/a;->l:Z

    if-eqz p2, :cond_8

    .line 411
    invoke-direct {p0, p1}, Lcom/umeng/message/k;->c(Landroid/content/Context;)V

    :cond_8
    :goto_5
    return v3
.end method

.method public g(Landroid/content/Context;Lcom/umeng/message/entity/a;)Z
    .locals 3

    .line 420
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "body"

    .line 421
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    .line 422
    iget-object v2, p2, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_id"

    .line 423
    iget-object p2, p2, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 427
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public h(Landroid/content/Context;Lcom/umeng/message/entity/a;)I
    .locals 6

    const/4 v0, -0x1

    .line 454
    :try_start_0
    iget-object v1, p2, Lcom/umeng/message/entity/a;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v1

    iget-object p2, p2, Lcom/umeng/message/entity/a;->r:Ljava/lang/String;

    .line 456
    invoke-virtual {v1, p2}, Lcom/umeng/message/a/c;->c(Ljava/lang/String;)I

    move-result p2

    move v0, p2

    :cond_0
    if-gez v0, :cond_1

    .line 460
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object p2

    const-string v1, "umeng_push_notification_default_small_icon"

    .line 461
    invoke-virtual {p2, v1}, Lcom/umeng/message/a/c;->c(Ljava/lang/String;)I

    move-result p2

    move v0, p2

    :cond_1
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 465
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/k;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, p2, [Ljava/lang/String;

    const-string v5, "\u6ca1\u6709\u81ea\u5b9a\u4e49\u901a\u77e5\u56fe\u6807\uff0c\u6539\u7528\u5e94\u7528\u56fe\u6807"

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    move v0, p1

    :cond_2
    if-gez v0, :cond_3

    .line 470
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/k;->b:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/String;

    const-string v2, "\u627e\u4e0d\u5230\u9002\u5f53\u7684\u901a\u77e5\u56fe\u6807\uff0c\u8bf7\u786e\u4fdd\u60a8\u4e3a\u6b64\u901a\u77e5\u6307\u5b9a\u4e86\u4e00\u4e2a\u56fe\u6807\uff0c\u6216\u8005\u5e94\u7528\u5df2\u7ecf\u5b9a\u4e49\u4e86\u4e00\u4e2a\u56fe\u6807"

    aput-object v2, p2, v1

    invoke-static {p1, v1, p2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 475
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public i(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 485
    :try_start_0
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/umeng/message/entity/a;->q:Ljava/lang/String;

    .line 487
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_3

    const/4 v2, -0x1

    .line 492
    iget-object v3, p2, Lcom/umeng/message/entity/a;->C:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 493
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v2

    iget-object p2, p2, Lcom/umeng/message/entity/a;->C:Ljava/lang/String;

    .line 494
    invoke-virtual {v2, p2}, Lcom/umeng/message/a/c;->c(Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-gez v2, :cond_2

    .line 498
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object p2

    const-string v2, "umeng_push_notification_default_large_icon"

    .line 499
    invoke-virtual {p2, v2}, Lcom/umeng/message/a/c;->c(Ljava/lang/String;)I

    move-result v2

    :cond_2
    if-lez v2, :cond_3

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 503
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 511
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public j(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;
    .locals 1

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/umeng/message/entity/a;->u:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public k(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/graphics/Bitmap;
    .locals 1

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/umeng/message/entity/a;->v:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    .line 535
    :try_start_0
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
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

    .line 537
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

    .line 543
    iget-object v3, p2, Lcom/umeng/message/entity/a;->p:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 544
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object v2

    iget-object p2, p2, Lcom/umeng/message/entity/a;->p:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/umeng/message/a/c;->f(Ljava/lang/String;)I

    move-result v2

    :cond_2
    if-gez v2, :cond_3

    .line 548
    invoke-static {p1}, Lcom/umeng/message/a/c;->a(Landroid/content/Context;)Lcom/umeng/message/a/c;

    move-result-object p2

    const-string v2, "umeng_push_notification_default_sound"

    invoke-virtual {p2, v2}, Lcom/umeng/message/a/c;->f(Ljava/lang/String;)I

    move-result v2

    :cond_3
    if-lez v2, :cond_4

    .line 552
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

    .line 557
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v0
.end method

.method public m(Landroid/content/Context;Lcom/umeng/message/entity/a;)Landroid/app/Notification;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
