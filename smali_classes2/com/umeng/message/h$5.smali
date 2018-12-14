.class Lcom/umeng/message/h$5;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/h;->c(J)V
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

    .line 340
    iput-object p1, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 343
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v1}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/b/h;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 346
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 347
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/message/b/h$a;

    .line 348
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "ts"

    .line 349
    iget-wide v6, v3, Lcom/umeng/message/b/h$a;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "pa"

    .line 350
    iget-object v6, v3, Lcom/umeng/message/b/h$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "device_token"

    .line 351
    iget-object v6, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v6}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/message/d;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "msg_id"

    .line 352
    iget-object v6, v3, Lcom/umeng/message/b/h$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "action_type"

    .line 353
    iget v3, v3, Lcom/umeng/message/b/h$a;->c:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v1}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/stateless/a;->a:Landroid/content/Context;

    .line 358
    new-instance v1, Lcom/umeng/commonsdk/stateless/a;

    invoke-direct {v1}, Lcom/umeng/commonsdk/stateless/a;-><init>()V

    .line 359
    iget-object v2, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v2}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "header"

    .line 360
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "din"

    .line 361
    iget-object v5, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v5}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "p_sdk_v"

    const-string v5, "4.2.0"

    .line 362
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "umid"

    .line 363
    iget-object v5, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v5}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/a/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "header"

    .line 364
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "push"

    .line 366
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    iget-object v4, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v4}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/b/e;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    iget-object v4, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v4}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "umpx_push_logs"

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "exception"

    .line 370
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v1, v0}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;Lorg/json/JSONArray;)V

    goto :goto_1

    .line 374
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "jsonHeader"

    .line 375
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "jsonBody"

    .line 376
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 378
    iget-object v2, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v2}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.umeng.message.message.sendmessage.action"

    .line 379
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "KEY_UMPX_PATH"

    const-string v3, "umpx_push_logs"

    .line 380
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "KEY_SENDMESSAGE"

    .line 381
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/umeng/message/h$5;->a:Lcom/umeng/message/h;

    invoke-static {v0}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 386
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
