.class Lcom/umeng/message/h$2;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/h;


# direct methods
.method constructor <init>(Lcom/umeng/message/h;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/umeng/message/h$2;->a:Lcom/umeng/message/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/h$2;->a:Lcom/umeng/message/h;

    invoke-static {v1}, Lcom/umeng/message/h;->b(Lcom/umeng/message/h;)Lorg/json/JSONObject;

    move-result-object v1

    .line 568
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    invoke-static {}, Lcom/umeng/message/h;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackRegister-->request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    invoke-static {v2, v5, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/umeng/message/h$2;->a:Lcom/umeng/message/h;

    invoke-static {v2}, Lcom/umeng/message/h;->d(Lcom/umeng/message/h;)Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-static {v2}, Lcom/umeng/message/b/e;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 573
    sget-object v4, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    invoke-static {}, Lcom/umeng/message/h;->b()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TestDevice sign ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    invoke-static {v4, v5, v3}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    const-string v3, "TD"

    .line 574
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    :cond_0
    invoke-static {}, Lcom/umeng/message/h;->c()Lcom/umeng/message/a/b/b;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/umeng/message/a/b/b;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 580
    :try_start_1
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :goto_0
    invoke-static {v0}, Lcom/umeng/message/h;->d(Z)Z

    return-void

    :goto_1
    invoke-static {v0}, Lcom/umeng/message/h;->d(Z)Z

    throw v1
.end method
