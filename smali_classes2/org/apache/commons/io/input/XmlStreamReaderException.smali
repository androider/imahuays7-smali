.class public Lorg/apache/commons/io/input/XmlStreamReaderException;
.super Ljava/io/IOException;
.source "XmlStreamReaderException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 60
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->d:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->e:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->a:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->b:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBomEncoding()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeEncoding()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeMime()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlGuessEncoding()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->b:Ljava/lang/String;

    return-object v0
.end method
