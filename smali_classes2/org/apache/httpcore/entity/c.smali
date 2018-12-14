.class public Lorg/apache/httpcore/entity/c;
.super Lorg/apache/httpcore/entity/a;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final d:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final e:[B

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lorg/apache/httpcore/entity/c;-><init>([BLorg/apache/httpcore/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/httpcore/entity/ContentType;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/httpcore/entity/a;-><init>()V

    const-string v0, "Source byte array"

    .line 58
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lorg/apache/httpcore/entity/c;->d:[B

    .line 60
    iput-object p1, p0, Lorg/apache/httpcore/entity/c;->e:[B

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lorg/apache/httpcore/entity/c;->f:I

    .line 62
    iget-object p1, p0, Lorg/apache/httpcore/entity/c;->e:[B

    array-length p1, p1

    iput p1, p0, Lorg/apache/httpcore/entity/c;->g:I

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2}, Lorg/apache/httpcore/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/entity/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    .line 113
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/apache/httpcore/entity/c;->e:[B

    iget v1, p0, Lorg/apache/httpcore/entity/c;->f:I

    iget v2, p0, Lorg/apache/httpcore/entity/c;->g:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public b()J
    .locals 2

    .line 103
    iget v0, p0, Lorg/apache/httpcore/entity/c;->g:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 4

    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/httpcore/entity/c;->e:[B

    iget v2, p0, Lorg/apache/httpcore/entity/c;->f:I

    iget v3, p0, Lorg/apache/httpcore/entity/c;->g:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
