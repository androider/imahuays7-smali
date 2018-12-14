.class public Lanet/channel/strategy/utils/c;
.super Ljava/io/InputStream;
.source "Taobao"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lanet/channel/strategy/utils/c;->a:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lanet/channel/strategy/utils/c;->b:J

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input stream cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_0
    iput-object p1, p0, Lanet/channel/strategy/utils/c;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lanet/channel/strategy/utils/c;->b:J

    return-wide v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-wide v0, p0, Lanet/channel/strategy/utils/c;->b:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lanet/channel/strategy/utils/c;->b:J

    .line 29
    iget-object v0, p0, Lanet/channel/strategy/utils/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lanet/channel/strategy/utils/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 35
    iget-wide p2, p0, Lanet/channel/strategy/utils/c;->b:J

    int-to-long v0, p1

    add-long v2, p2, v0

    iput-wide v2, p0, Lanet/channel/strategy/utils/c;->b:J

    return p1
.end method
