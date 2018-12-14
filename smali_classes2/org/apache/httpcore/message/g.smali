.class public Lorg/apache/httpcore/message/g;
.super Lorg/apache/httpcore/message/a;
.source "BasicHttpResponse.java"

# interfaces
.implements Lorg/apache/httpcore/q;


# instance fields
.field private c:Lorg/apache/httpcore/x;

.field private d:Lorg/apache/httpcore/ProtocolVersion;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lorg/apache/httpcore/j;

.field private final h:Lorg/apache/httpcore/v;

.field private i:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/x;Lorg/apache/httpcore/v;Ljava/util/Locale;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/apache/httpcore/message/a;-><init>()V

    const-string v0, "Status line"

    .line 73
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/httpcore/x;

    iput-object v0, p0, Lorg/apache/httpcore/message/g;->c:Lorg/apache/httpcore/x;

    .line 74
    invoke-interface {p1}, Lorg/apache/httpcore/x;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/httpcore/message/g;->d:Lorg/apache/httpcore/ProtocolVersion;

    .line 75
    invoke-interface {p1}, Lorg/apache/httpcore/x;->getStatusCode()I

    move-result v0

    iput v0, p0, Lorg/apache/httpcore/message/g;->e:I

    .line 76
    invoke-interface {p1}, Lorg/apache/httpcore/x;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/httpcore/message/g;->f:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/apache/httpcore/message/g;->h:Lorg/apache/httpcore/v;

    .line 78
    iput-object p3, p0, Lorg/apache/httpcore/message/g;->i:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/httpcore/x;
    .locals 4

    .line 131
    iget-object v0, p0, Lorg/apache/httpcore/message/g;->c:Lorg/apache/httpcore/x;

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Lorg/apache/httpcore/message/BasicStatusLine;

    iget-object v1, p0, Lorg/apache/httpcore/message/g;->d:Lorg/apache/httpcore/ProtocolVersion;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/httpcore/message/g;->d:Lorg/apache/httpcore/ProtocolVersion;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/httpcore/HttpVersion;->HTTP_1_1:Lorg/apache/httpcore/HttpVersion;

    :goto_0
    iget v2, p0, Lorg/apache/httpcore/message/g;->e:I

    iget-object v3, p0, Lorg/apache/httpcore/message/g;->f:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/httpcore/message/g;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget v3, p0, Lorg/apache/httpcore/message/g;->e:I

    .line 135
    invoke-virtual {p0, v3}, Lorg/apache/httpcore/message/g;->b(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/httpcore/message/BasicStatusLine;-><init>(Lorg/apache/httpcore/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/httpcore/message/g;->c:Lorg/apache/httpcore/x;

    .line 137
    :cond_2
    iget-object v0, p0, Lorg/apache/httpcore/message/g;->c:Lorg/apache/httpcore/x;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const-string v0, "Status code"

    .line 184
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->b(ILjava/lang/String;)I

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lorg/apache/httpcore/message/g;->c:Lorg/apache/httpcore/x;

    .line 186
    iput p1, p0, Lorg/apache/httpcore/message/g;->e:I

    .line 187
    iput-object v0, p0, Lorg/apache/httpcore/message/g;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/apache/httpcore/j;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/apache/httpcore/message/g;->g:Lorg/apache/httpcore/j;

    return-void
.end method

.method protected b(I)Ljava/lang/String;
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/apache/httpcore/message/g;->h:Lorg/apache/httpcore/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/httpcore/message/g;->h:Lorg/apache/httpcore/v;

    iget-object v1, p0, Lorg/apache/httpcore/message/g;->i:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/httpcore/message/g;->i:Ljava/util/Locale;

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 219
    :goto_0
    invoke-interface {v0, p1, v1}, Lorg/apache/httpcore/v;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public b()Lorg/apache/httpcore/j;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/httpcore/message/g;->g:Lorg/apache/httpcore/j;

    return-object v0
.end method

.method public c()Lorg/apache/httpcore/ProtocolVersion;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/httpcore/message/g;->d:Lorg/apache/httpcore/ProtocolVersion;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-virtual {p0}, Lorg/apache/httpcore/message/g;->a()Lorg/apache/httpcore/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    iget-object v2, p0, Lorg/apache/httpcore/message/g;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v2, p0, Lorg/apache/httpcore/message/g;->g:Lorg/apache/httpcore/j;

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Lorg/apache/httpcore/message/g;->g:Lorg/apache/httpcore/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
