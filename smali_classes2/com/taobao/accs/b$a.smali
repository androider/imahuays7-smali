.class public Lcom/taobao/accs/b$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 288
    iput v0, p0, Lcom/taobao/accs/b$a;->g:I

    .line 289
    iput v0, p0, Lcom/taobao/accs/b$a;->h:I

    const/4 v1, 0x1

    .line 290
    iput-boolean v1, p0, Lcom/taobao/accs/b$a;->i:Z

    .line 291
    iput-boolean v1, p0, Lcom/taobao/accs/b$a;->j:Z

    .line 292
    iput v0, p0, Lcom/taobao/accs/b$a;->k:I

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/taobao/accs/b$a;->l:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/taobao/accs/b$a;
    .locals 0

    .line 321
    iput p1, p0, Lcom/taobao/accs/b$a;->g:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/taobao/accs/b$a;
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/taobao/accs/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/taobao/accs/b$a;
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/taobao/accs/b$a;->i:Z

    return-object p0
.end method

.method public a()Lcom/taobao/accs/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/taobao/accs/b$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Lcom/taobao/accs/AccsException;

    const-string v1, "appkey null"

    invoke-direct {v0, v1}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    new-instance v0, Lcom/taobao/accs/b;

    invoke-direct {v0}, Lcom/taobao/accs/b;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/taobao/accs/b$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->a(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lcom/taobao/accs/b$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->b(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/taobao/accs/b$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->c(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-boolean v1, p0, Lcom/taobao/accs/b$a;->i:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->a(Lcom/taobao/accs/b;Z)Z

    .line 365
    iget-boolean v1, p0, Lcom/taobao/accs/b$a;->j:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->b(Lcom/taobao/accs/b;Z)Z

    .line 366
    iget v1, p0, Lcom/taobao/accs/b$a;->g:I

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->a(Lcom/taobao/accs/b;I)I

    .line 367
    iget v1, p0, Lcom/taobao/accs/b$a;->h:I

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->b(Lcom/taobao/accs/b;I)I

    .line 368
    iget-object v1, p0, Lcom/taobao/accs/b$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->d(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/taobao/accs/b$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->e(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/taobao/accs/b$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->f(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    iget v1, p0, Lcom/taobao/accs/b$a;->k:I

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->c(Lcom/taobao/accs/b;I)I

    .line 372
    iget-boolean v1, p0, Lcom/taobao/accs/b$a;->l:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->c(Lcom/taobao/accs/b;Z)Z

    .line 374
    invoke-static {v0}, Lcom/taobao/accs/b;->a(Lcom/taobao/accs/b;)I

    move-result v1

    if-gez v1, :cond_1

    .line 375
    sget v1, Lcom/taobao/accs/b;->b:I

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->c(Lcom/taobao/accs/b;I)I

    .line 378
    :cond_1
    invoke-static {v0}, Lcom/taobao/accs/b;->b(Lcom/taobao/accs/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 379
    invoke-static {v0, v3}, Lcom/taobao/accs/b;->d(Lcom/taobao/accs/b;I)I

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {v0, v2}, Lcom/taobao/accs/b;->d(Lcom/taobao/accs/b;I)I

    .line 384
    :goto_0
    invoke-static {v0}, Lcom/taobao/accs/b;->c(Lcom/taobao/accs/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    sget-object v1, Lcom/taobao/accs/b;->a:[Ljava/lang/String;

    sget v4, Lcom/taobao/accs/b;->b:I

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->d(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    :cond_3
    invoke-static {v0}, Lcom/taobao/accs/b;->d(Lcom/taobao/accs/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 389
    invoke-static {}, Lcom/taobao/accs/b;->m()[Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/taobao/accs/b;->b:I

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->e(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    :cond_4
    invoke-static {v0}, Lcom/taobao/accs/b;->e(Lcom/taobao/accs/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 393
    invoke-static {v0}, Lcom/taobao/accs/b;->f(Lcom/taobao/accs/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/accs/b;->f(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    :cond_5
    invoke-static {v0}, Lcom/taobao/accs/b;->a(Lcom/taobao/accs/b;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 411
    invoke-static {}, Lcom/taobao/accs/b;->p()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 408
    :pswitch_0
    invoke-static {}, Lcom/taobao/accs/b;->o()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 405
    :pswitch_1
    invoke-static {}, Lcom/taobao/accs/b;->n()Ljava/util/Map;

    move-result-object v1

    .line 415
    :goto_1
    invoke-virtual {v0}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccsClientConfig_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "build"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "config"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/taobao/accs/b;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)Lcom/taobao/accs/b$a;
    .locals 0

    .line 326
    iput p1, p0, Lcom/taobao/accs/b$a;->h:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/taobao/accs/b$a;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/taobao/accs/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/taobao/accs/b$a;
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/taobao/accs/b$a;->j:Z

    return-object p0
.end method

.method public c(I)Lcom/taobao/accs/b$a;
    .locals 0

    .line 341
    iput p1, p0, Lcom/taobao/accs/b$a;->k:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/taobao/accs/b$a;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/taobao/accs/b$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/taobao/accs/b$a;
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/taobao/accs/b$a;->l:Z

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/taobao/accs/b$a;
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/taobao/accs/b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/taobao/accs/b$a;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/taobao/accs/b$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/taobao/accs/b$a;
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/taobao/accs/b$a;->b:Ljava/lang/String;

    return-object p0
.end method
