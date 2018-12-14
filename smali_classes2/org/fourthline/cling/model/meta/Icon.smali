.class public Lorg/fourthline/cling/model/meta/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final data:[B

.field private final depth:I

.field private device:Lorg/fourthline/cling/model/meta/Device;

.field private final height:I

.field private final mimeType:Lorg/seamless/util/MimeType;

.field private final uri:Ljava/net/URI;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p5}, Lorg/seamless/util/io/IO;->readBytes(Ljava/io/File;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-static {p6}, Lorg/seamless/util/io/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p6, :cond_0

    const-string v0, ""

    .line 114
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/fourthline/cling/model/types/BinHexDatatype;

    invoke-direct {v0}, Lorg/fourthline/cling/model/types/BinHexDatatype;-><init>()V

    invoke-virtual {v0, p6}, Lorg/fourthline/cling/model/types/BinHexDatatype;->valueOf(Ljava/lang/String;)[B

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 112
    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[B)V
    .locals 7

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    invoke-static {p5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Icon;-><init>(Lorg/seamless/util/MimeType;IIILjava/net/URI;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Icon;-><init>(Lorg/seamless/util/MimeType;IIILjava/net/URI;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URL;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v5, Ljava/io/File;

    invoke-static {p5}, Lorg/seamless/util/URIUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object p5

    invoke-direct {v5, p5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/io/File;)V

    return-void
.end method

.method protected constructor <init>(Lorg/seamless/util/MimeType;IIILjava/net/URI;[B)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Icon;->mimeType:Lorg/seamless/util/MimeType;

    .line 120
    iput p2, p0, Lorg/fourthline/cling/model/meta/Icon;->width:I

    .line 121
    iput p3, p0, Lorg/fourthline/cling/model/meta/Icon;->height:I

    .line 122
    iput p4, p0, Lorg/fourthline/cling/model/meta/Icon;->depth:I

    .line 123
    iput-object p5, p0, Lorg/fourthline/cling/model/meta/Icon;->uri:Ljava/net/URI;

    .line 124
    iput-object p6, p0, Lorg/fourthline/cling/model/meta/Icon;->data:[B

    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/fourthline/cling/model/meta/Icon;
    .locals 8

    .line 207
    new-instance v7, Lorg/fourthline/cling/model/meta/Icon;

    .line 208
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getMimeType()Lorg/seamless/util/MimeType;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getWidth()I

    move-result v2

    .line 210
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getHeight()I

    move-result v3

    .line 211
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getDepth()I

    move-result v4

    .line 212
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v5

    .line 213
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getData()[B

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Icon;-><init>(Lorg/seamless/util/MimeType;IIILjava/net/URI;[B)V

    return-object v7
.end method

.method public getData()[B
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Icon;->data:[B

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/fourthline/cling/model/meta/Icon;->depth:I

    return v0
.end method

.method public getDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Icon;->device:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/fourthline/cling/model/meta/Icon;->height:I

    return v0
.end method

.method public getMimeType()Lorg/seamless/util/MimeType;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Icon;->mimeType:Lorg/seamless/util/MimeType;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Icon;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/fourthline/cling/model/meta/Icon;->width:I

    return v0
.end method

.method setDevice(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Icon;->device:Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    .line 157
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Final value has been set already, model is immutable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Icon;->device:Lorg/fourthline/cling/model/meta/Device;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icon("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MIME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getMimeType()Lorg/seamless/util/MimeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getMimeType()Lorg/seamless/util/MimeType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    sget-object v1, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 166
    sget-object v1, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid icon, missing mime type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    .line 169
    sget-object v1, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 170
    sget-object v1, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid icon, missing width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 172
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 173
    sget-object v1, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 174
    sget-object v1, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid icon, missing height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getDepth()I

    move-result v1

    if-nez v1, :cond_3

    .line 177
    sget-object v1, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 178
    sget-object v1, Lorg/fourthline/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid icon, missing bitmap depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 181
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_4

    .line 182
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "uri"

    const-string v4, "URL is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_5

    .line 191
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    .line 193
    new-instance v2, Lorg/fourthline/cling/model/ValidationError;

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "uri"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL must be valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_1
    :cond_5
    :goto_0
    return-object v0
.end method
