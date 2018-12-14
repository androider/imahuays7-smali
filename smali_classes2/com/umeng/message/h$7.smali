.class Lcom/umeng/message/h$7;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/h;->d(J)V
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

    .line 481
    iput-object p1, p0, Lcom/umeng/message/h$7;->a:Lcom/umeng/message/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/h$7;->a:Lcom/umeng/message/h;

    invoke-static {v1}, Lcom/umeng/message/h;->b(Lcom/umeng/message/h;)Lorg/json/JSONObject;

    move-result-object v1

    .line 488
    iget-object v2, p0, Lcom/umeng/message/h$7;->a:Lcom/umeng/message/h;

    invoke-static {v2}, Lcom/umeng/message/h;->c(Lcom/umeng/message/h;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "ucode"

    .line 491
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    :cond_0
    invoke-static {}, Lcom/umeng/message/h;->c()Lcom/umeng/message/a/b/b;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/umeng/message/a/b/b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-static {v0}, Lcom/umeng/message/h;->c(Z)Z

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/umeng/message/h;->c(Z)Z

    throw v1

    :catch_0
    invoke-static {v0}, Lcom/umeng/message/h;->c(Z)Z

    return-void
.end method
