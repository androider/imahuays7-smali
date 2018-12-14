.class public Lme/jessyan/progressmanager/body/b;
.super Lokhttp3/ResponseBody;
.source "ProgressResponseBody.java"


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:I

.field protected final c:Lokhttp3/ResponseBody;

.field protected final d:[Lme/jessyan/progressmanager/a;

.field protected final e:Lme/jessyan/progressmanager/body/ProgressInfo;

.field private f:Lokio/e;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lokhttp3/ResponseBody;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lokhttp3/ResponseBody;",
            "Ljava/util/List<",
            "Lme/jessyan/progressmanager/a;",
            ">;I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 52
    iput-object p2, p0, Lme/jessyan/progressmanager/body/b;->c:Lokhttp3/ResponseBody;

    .line 53
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lme/jessyan/progressmanager/a;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lme/jessyan/progressmanager/a;

    iput-object p2, p0, Lme/jessyan/progressmanager/body/b;->d:[Lme/jessyan/progressmanager/a;

    .line 54
    iput-object p1, p0, Lme/jessyan/progressmanager/body/b;->a:Landroid/os/Handler;

    .line 55
    iput p4, p0, Lme/jessyan/progressmanager/body/b;->b:I

    .line 56
    new-instance p1, Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lme/jessyan/progressmanager/body/ProgressInfo;-><init>(J)V

    iput-object p1, p0, Lme/jessyan/progressmanager/body/b;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    return-void
.end method

.method private a(Lokio/r;)Lokio/r;
    .locals 1

    .line 78
    new-instance v0, Lme/jessyan/progressmanager/body/b$1;

    invoke-direct {v0, p0, p1}, Lme/jessyan/progressmanager/body/b$1;-><init>(Lme/jessyan/progressmanager/body/b;Lokio/r;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 66
    iget-object v0, p0, Lme/jessyan/progressmanager/body/b;->c:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 61
    iget-object v0, p0, Lme/jessyan/progressmanager/body/b;->c:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/e;
    .locals 1

    .line 71
    iget-object v0, p0, Lme/jessyan/progressmanager/body/b;->f:Lokio/e;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lme/jessyan/progressmanager/body/b;->c:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/jessyan/progressmanager/body/b;->a(Lokio/r;)Lokio/r;

    move-result-object v0

    invoke-static {v0}, Lokio/k;->a(Lokio/r;)Lokio/e;

    move-result-object v0

    iput-object v0, p0, Lme/jessyan/progressmanager/body/b;->f:Lokio/e;

    .line 74
    :cond_0
    iget-object v0, p0, Lme/jessyan/progressmanager/body/b;->f:Lokio/e;

    return-object v0
.end method
