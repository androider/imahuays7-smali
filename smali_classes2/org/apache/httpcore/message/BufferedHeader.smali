.class public Lorg/apache/httpcore/message/BufferedHeader;
.super Ljava/lang/Object;
.source "BufferedHeader.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/httpcore/d;


# static fields
.field private static final serialVersionUID:J = -0x266b2a09650b7be8L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/httpcore/util/CharArrayBuffer;

.field private final c:I


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/util/CharArrayBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Char array buffer"

    .line 77
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x3a

    .line 78
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    new-instance v0, Lorg/apache/httpcore/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, v1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 85
    new-instance v0, Lorg/apache/httpcore/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput-object p1, p0, Lorg/apache/httpcore/message/BufferedHeader;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    .line 89
    iput-object v1, p0, Lorg/apache/httpcore/message/BufferedHeader;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 90
    iput v0, p0, Lorg/apache/httpcore/message/BufferedHeader;->c:I

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

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer()Lorg/apache/httpcore/util/CharArrayBuffer;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/httpcore/message/BufferedHeader;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    return-object v0
.end method

.method public getElements()[Lorg/apache/httpcore/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/apache/httpcore/message/o;

    iget-object v1, p0, Lorg/apache/httpcore/message/BufferedHeader;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/httpcore/message/o;-><init>(II)V

    .line 107
    iget v1, p0, Lorg/apache/httpcore/message/BufferedHeader;->c:I

    invoke-virtual {v0, v1}, Lorg/apache/httpcore/message/o;->a(I)V

    .line 108
    sget-object v1, Lorg/apache/httpcore/message/d;->b:Lorg/apache/httpcore/message/d;

    iget-object v2, p0, Lorg/apache/httpcore/message/BufferedHeader;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v1, v2, v0}, Lorg/apache/httpcore/message/d;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)[Lorg/apache/httpcore/f;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/httpcore/message/BufferedHeader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/apache/httpcore/message/BufferedHeader;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    iget v1, p0, Lorg/apache/httpcore/message/BufferedHeader;->c:I

    iget-object v2, p0, Lorg/apache/httpcore/message/BufferedHeader;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/httpcore/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValuePos()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/apache/httpcore/message/BufferedHeader;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/httpcore/message/BufferedHeader;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
