.class public Lorg/apache/httpcore/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/httpcore/u;


# static fields
.field private static final serialVersionUID:J = -0x5957a9ac336aca08L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    .line 59
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lorg/apache/httpcore/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 94
    check-cast p1, Lorg/apache/httpcore/message/BasicNameValuePair;

    .line 95
    iget-object v1, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/httpcore/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->b:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/httpcore/message/BasicNameValuePair;->b:Ljava/lang/String;

    .line 96
    invoke-static {v1, p1}, Lorg/apache/httpcore/util/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->a:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lorg/apache/httpcore/util/e;->a(ILjava/lang/Object;)I

    move-result v0

    .line 105
    iget-object v1, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/httpcore/util/e;->a(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->a:Ljava/lang/String;

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
