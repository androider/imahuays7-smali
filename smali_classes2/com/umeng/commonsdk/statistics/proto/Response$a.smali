.class Lcom/umeng/commonsdk/statistics/proto/Response$a;
.super Lcom/umeng/commonsdk/proguard/n;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/n<",
        "Lcom/umeng/commonsdk/statistics/proto/Response;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/n;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 358
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$a;->a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->f()Lcom/umeng/commonsdk/proguard/i;

    .line 365
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->h()Lcom/umeng/commonsdk/proguard/b;

    move-result-object v0

    .line 366
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/b;->b:B

    if-nez v1, :cond_1

    .line 400
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->g()V

    .line 404
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetResp_code()Z

    move-result p1

    if-nez p1, :cond_0

    .line 405
    new-instance p1, Lcom/umeng/commonsdk/proguard/al;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->validate()V

    return-void

    .line 369
    :cond_1
    iget-short v1, v0, Lcom/umeng/commonsdk/proguard/b;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 396
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/b;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;B)V

    goto :goto_1

    .line 387
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/b;->b:B

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 388
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 389
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->read(Lcom/umeng/commonsdk/proguard/e;)V

    .line 390
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setImprintIsSet(Z)V

    goto :goto_1

    .line 392
    :cond_2
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/b;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;B)V

    goto :goto_1

    .line 379
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/b;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    .line 380
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 381
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setMsgIsSet(Z)V

    goto :goto_1

    .line 383
    :cond_3
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/b;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;B)V

    goto :goto_1

    .line 371
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/b;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    .line 372
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->s()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 373
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    goto :goto_1

    .line 375
    :cond_4
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/b;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;B)V

    .line 398
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->i()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 358
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$a;->b(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 413
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->validate()V

    .line 415
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->a()Lcom/umeng/commonsdk/proguard/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Lcom/umeng/commonsdk/proguard/i;)V

    .line 416
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->b()Lcom/umeng/commonsdk/proguard/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Lcom/umeng/commonsdk/proguard/b;)V

    .line 417
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(I)V

    .line 418
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->b()V

    .line 419
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->c()Lcom/umeng/commonsdk/proguard/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Lcom/umeng/commonsdk/proguard/b;)V

    .line 422
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->b()V

    .line 426
    :cond_0
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->d()Lcom/umeng/commonsdk/proguard/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Lcom/umeng/commonsdk/proguard/b;)V

    .line 429
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->write(Lcom/umeng/commonsdk/proguard/e;)V

    .line 430
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->b()V

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->c()V

    .line 434
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->a()V

    return-void
.end method
