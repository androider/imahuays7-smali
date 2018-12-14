.class final Lcom/flurry/sdk/at$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/at;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dj$a<",
        "[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/sdk/at;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/at;JZ)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    iput-wide p2, p0, Lcom/flurry/sdk/at$2;->a:J

    iput-boolean p4, p0, Lcom/flurry/sdk/at$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/dj;Ljava/lang/Object;)V
    .locals 9

    .line 412
    check-cast p2, [B

    .line 2165
    iget v0, p1, Lcom/flurry/sdk/dl;->q:I

    .line 1417
    invoke-static {}, Lcom/flurry/sdk/at;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proton config request: HTTP status code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x2710

    const/16 v4, 0x190

    if-eq v0, v4, :cond_6

    const/16 v4, 0x196

    if-eq v0, v4, :cond_6

    const/16 v4, 0x19c

    if-eq v0, v4, :cond_6

    const/16 v4, 0x19f

    if-ne v0, v4, :cond_0

    goto/16 :goto_3

    .line 1429
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->b()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 1432
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    new-instance v6, Lcom/flurry/sdk/at$2$1;

    invoke-direct {v6, p0, p2}, Lcom/flurry/sdk/at$2$1;-><init>(Lcom/flurry/sdk/at$2;[B)V

    invoke-virtual {v4, v6}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 1440
    :try_start_0
    iget-object v4, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {v4}, Lcom/flurry/sdk/at;->e(Lcom/flurry/sdk/at;)Lcom/flurry/sdk/dh;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/flurry/sdk/dh;->c([B)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flurry/sdk/ag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v4, 0x5

    .line 1442
    invoke-static {}, Lcom/flurry/sdk/at;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to decode proton config response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v6, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object p2, v5

    .line 1445
    :goto_0
    invoke-static {p2}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/ag;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    if-eqz v5, :cond_3

    .line 1450
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p2, v1, v2}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at;J)J

    .line 1452
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    iget-wide v1, p0, Lcom/flurry/sdk/at$2;->a:J

    invoke-static {p2, v1, v2}, Lcom/flurry/sdk/at;->b(Lcom/flurry/sdk/at;J)J

    .line 1453
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    iget-boolean v1, p0, Lcom/flurry/sdk/at$2;->b:Z

    invoke-static {p2, v1}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at;Z)Z

    .line 1454
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p2, v5}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at;Lcom/flurry/sdk/ag;)Lcom/flurry/sdk/ag;

    .line 1457
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p2}, Lcom/flurry/sdk/at;->f(Lcom/flurry/sdk/at;)V

    .line 1460
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p2}, Lcom/flurry/sdk/at;->g(Lcom/flurry/sdk/at;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1461
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p2}, Lcom/flurry/sdk/at;->h(Lcom/flurry/sdk/at;)Z

    .line 1462
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    const-string v1, "flurry.session_start"

    invoke-static {p2, v1}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at;Ljava/lang/String;)V

    .line 1466
    :cond_2
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p2}, Lcom/flurry/sdk/at;->i(Lcom/flurry/sdk/at;)V

    :cond_3
    if-nez v5, :cond_5

    .line 1472
    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p2}, Lcom/flurry/sdk/at;->j(Lcom/flurry/sdk/at;)J

    move-result-wide v1

    const/4 p2, 0x1

    shl-long/2addr v1, p2

    const/16 p2, 0x1ad

    if-ne v0, p2, :cond_4

    const-string p2, "Retry-After"

    .line 1476
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1477
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    .line 1478
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1480
    invoke-static {}, Lcom/flurry/sdk/at;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Server returned retry time: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1483
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v0, 0x3e8

    mul-long v1, p1, v0

    goto :goto_2

    .line 1485
    :catch_1
    invoke-static {}, Lcom/flurry/sdk/at;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Server returned nonsensical retry time"

    invoke-static {v3, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1489
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at;J)J

    .line 1491
    invoke-static {}, Lcom/flurry/sdk/at;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Proton config request failed, backing off: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    .line 1492
    invoke-static {v0}, Lcom/flurry/sdk/at;->j(Lcom/flurry/sdk/at;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1491
    invoke-static {v3, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    iget-object p2, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    .line 1494
    invoke-static {p2}, Lcom/flurry/sdk/at;->k(Lcom/flurry/sdk/at;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    .line 1495
    invoke-static {v0}, Lcom/flurry/sdk/at;->j(Lcom/flurry/sdk/at;)J

    move-result-wide v0

    .line 1494
    invoke-virtual {p1, p2, v0, v1}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;J)V

    :cond_5
    return-void

    .line 1424
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/flurry/sdk/at$2;->c:Lcom/flurry/sdk/at;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at;J)J

    return-void
.end method
