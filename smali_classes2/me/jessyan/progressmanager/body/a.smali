.class public Lme/jessyan/progressmanager/body/a;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jessyan/progressmanager/body/a$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:I

.field protected final c:Lokhttp3/RequestBody;

.field protected final d:[Lme/jessyan/progressmanager/a;

.field protected final e:Lme/jessyan/progressmanager/body/ProgressInfo;

.field private f:Lokio/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lokhttp3/RequestBody;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lokhttp3/RequestBody;",
            "Ljava/util/List<",
            "Lme/jessyan/progressmanager/a;",
            ">;I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 53
    iput-object p2, p0, Lme/jessyan/progressmanager/body/a;->c:Lokhttp3/RequestBody;

    .line 54
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lme/jessyan/progressmanager/a;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lme/jessyan/progressmanager/a;

    iput-object p2, p0, Lme/jessyan/progressmanager/body/a;->d:[Lme/jessyan/progressmanager/a;

    .line 55
    iput-object p1, p0, Lme/jessyan/progressmanager/body/a;->a:Landroid/os/Handler;

    .line 56
    iput p4, p0, Lme/jessyan/progressmanager/body/a;->b:I

    .line 57
    new-instance p1, Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lme/jessyan/progressmanager/body/ProgressInfo;-><init>(J)V

    iput-object p1, p0, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lme/jessyan/progressmanager/body/a;->c:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 62
    iget-object v0, p0, Lme/jessyan/progressmanager/body/a;->c:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lme/jessyan/progressmanager/body/a;->f:Lokio/d;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lme/jessyan/progressmanager/body/a$a;

    invoke-direct {v0, p0, p1}, Lme/jessyan/progressmanager/body/a$a;-><init>(Lme/jessyan/progressmanager/body/a;Lokio/q;)V

    invoke-static {v0}, Lokio/k;->a(Lokio/q;)Lokio/d;

    move-result-object p1

    iput-object p1, p0, Lme/jessyan/progressmanager/body/a;->f:Lokio/d;

    .line 81
    :cond_0
    :try_start_0
    iget-object p1, p0, Lme/jessyan/progressmanager/body/a;->c:Lokhttp3/RequestBody;

    iget-object v0, p0, Lme/jessyan/progressmanager/body/a;->f:Lokio/d;

    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/d;)V

    .line 82
    iget-object p1, p0, Lme/jessyan/progressmanager/body/a;->f:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 84
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-object v1, p0, Lme/jessyan/progressmanager/body/a;->d:[Lme/jessyan/progressmanager/a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lme/jessyan/progressmanager/body/a;->d:[Lme/jessyan/progressmanager/a;

    aget-object v1, v1, v0

    iget-object v2, p0, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-virtual {v2}, Lme/jessyan/progressmanager/body/ProgressInfo;->b()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Lme/jessyan/progressmanager/a;->a(JLjava/lang/Exception;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    throw p1
.end method
