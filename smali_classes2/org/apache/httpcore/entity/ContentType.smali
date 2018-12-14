.class public final Lorg/apache/httpcore/entity/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final APPLICATION_ATOM_XML:Lorg/apache/httpcore/entity/ContentType;

.field public static final APPLICATION_FORM_URLENCODED:Lorg/apache/httpcore/entity/ContentType;

.field public static final APPLICATION_JSON:Lorg/apache/httpcore/entity/ContentType;

.field public static final APPLICATION_OCTET_STREAM:Lorg/apache/httpcore/entity/ContentType;

.field public static final APPLICATION_SVG_XML:Lorg/apache/httpcore/entity/ContentType;

.field public static final APPLICATION_XHTML_XML:Lorg/apache/httpcore/entity/ContentType;

.field public static final APPLICATION_XML:Lorg/apache/httpcore/entity/ContentType;

.field public static final DEFAULT_BINARY:Lorg/apache/httpcore/entity/ContentType;

.field public static final DEFAULT_TEXT:Lorg/apache/httpcore/entity/ContentType;

.field public static final IMAGE_BMP:Lorg/apache/httpcore/entity/ContentType;

.field public static final IMAGE_GIF:Lorg/apache/httpcore/entity/ContentType;

.field public static final IMAGE_JPEG:Lorg/apache/httpcore/entity/ContentType;

.field public static final IMAGE_PNG:Lorg/apache/httpcore/entity/ContentType;

.field public static final IMAGE_SVG:Lorg/apache/httpcore/entity/ContentType;

.field public static final IMAGE_TIFF:Lorg/apache/httpcore/entity/ContentType;

.field public static final IMAGE_WEBP:Lorg/apache/httpcore/entity/ContentType;

.field public static final MULTIPART_FORM_DATA:Lorg/apache/httpcore/entity/ContentType;

.field public static final TEXT_HTML:Lorg/apache/httpcore/entity/ContentType;

.field public static final TEXT_PLAIN:Lorg/apache/httpcore/entity/ContentType;

.field public static final TEXT_XML:Lorg/apache/httpcore/entity/ContentType;

.field public static final WILDCARD:Lorg/apache/httpcore/entity/ContentType;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/httpcore/entity/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6bcff2af98b1a2b8L


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/nio/charset/Charset;

.field private final d:[Lorg/apache/httpcore/u;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "application/atom+xml"

    .line 72
    sget-object v1, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_ATOM_XML:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "application/x-www-form-urlencoded"

    .line 74
    sget-object v1, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "application/json"

    .line 76
    sget-object v1, Lorg/apache/httpcore/b;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_JSON:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "application/octet-stream"

    const/4 v1, 0x0

    .line 78
    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "application/svg+xml"

    .line 80
    sget-object v2, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_SVG_XML:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "application/xhtml+xml"

    .line 82
    sget-object v2, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_XHTML_XML:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "application/xml"

    .line 84
    sget-object v2, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_XML:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "image/bmp"

    .line 86
    invoke-static {v0}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->IMAGE_BMP:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "image/gif"

    .line 88
    invoke-static {v0}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->IMAGE_GIF:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "image/jpeg"

    .line 90
    invoke-static {v0}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->IMAGE_JPEG:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "image/png"

    .line 92
    invoke-static {v0}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->IMAGE_PNG:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "image/svg+xml"

    .line 94
    invoke-static {v0}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->IMAGE_SVG:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "image/tiff"

    .line 96
    invoke-static {v0}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->IMAGE_TIFF:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "image/webp"

    .line 98
    invoke-static {v0}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->IMAGE_WEBP:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "multipart/form-data"

    .line 100
    sget-object v2, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->MULTIPART_FORM_DATA:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "text/html"

    .line 102
    sget-object v2, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->TEXT_HTML:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "text/plain"

    .line 104
    sget-object v2, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->TEXT_PLAIN:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "text/xml"

    .line 106
    sget-object v2, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->TEXT_XML:Lorg/apache/httpcore/entity/ContentType;

    const-string v0, "*/*"

    .line 108
    invoke-static {v0, v1}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->WILDCARD:Lorg/apache/httpcore/entity/ContentType;

    const/16 v0, 0x11

    .line 115
    new-array v0, v0, [Lorg/apache/httpcore/entity/ContentType;

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_ATOM_XML:Lorg/apache/httpcore/entity/ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/httpcore/entity/ContentType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_JSON:Lorg/apache/httpcore/entity/ContentType;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_SVG_XML:Lorg/apache/httpcore/entity/ContentType;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_XHTML_XML:Lorg/apache/httpcore/entity/ContentType;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_XML:Lorg/apache/httpcore/entity/ContentType;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->IMAGE_BMP:Lorg/apache/httpcore/entity/ContentType;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->IMAGE_GIF:Lorg/apache/httpcore/entity/ContentType;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->IMAGE_JPEG:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->IMAGE_PNG:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->IMAGE_SVG:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->IMAGE_TIFF:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->IMAGE_WEBP:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->MULTIPART_FORM_DATA:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->TEXT_HTML:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->TEXT_PLAIN:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->TEXT_XML:Lorg/apache/httpcore/entity/ContentType;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 135
    invoke-virtual {v4}, Lorg/apache/httpcore/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->a:Ljava/util/Map;

    .line 141
    sget-object v0, Lorg/apache/httpcore/entity/ContentType;->TEXT_PLAIN:Lorg/apache/httpcore/entity/ContentType;

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/httpcore/entity/ContentType;

    .line 142
    sget-object v0, Lorg/apache/httpcore/entity/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/httpcore/entity/ContentType;

    sput-object v0, Lorg/apache/httpcore/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/httpcore/entity/ContentType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/apache/httpcore/entity/ContentType;->b:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lorg/apache/httpcore/entity/ContentType;->c:Ljava/nio/charset/Charset;

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lorg/apache/httpcore/entity/ContentType;->d:[Lorg/apache/httpcore/u;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/apache/httpcore/u;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lorg/apache/httpcore/entity/ContentType;->b:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lorg/apache/httpcore/entity/ContentType;->c:Ljava/nio/charset/Charset;

    .line 162
    iput-object p3, p0, Lorg/apache/httpcore/entity/ContentType;->d:[Lorg/apache/httpcore/u;

    return-void
.end method

.method private static a(Ljava/lang/String;[Lorg/apache/httpcore/u;Z)Lorg/apache/httpcore/entity/ContentType;
    .locals 6

    .line 264
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 265
    invoke-interface {v3}, Lorg/apache/httpcore/u;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    invoke-interface {v3}, Lorg/apache/httpcore/u;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lorg/apache/httpcore/util/g;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz p2, :cond_1

    .line 272
    throw v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 279
    :goto_1
    new-instance p2, Lorg/apache/httpcore/entity/ContentType;

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    invoke-direct {p2, p0, v0, p1}, Lorg/apache/httpcore/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/apache/httpcore/u;)V

    return-object p2
.end method

.method private static a(Lorg/apache/httpcore/f;Z)Lorg/apache/httpcore/entity/ContentType;
    .locals 1

    .line 259
    invoke-interface {p0}, Lorg/apache/httpcore/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/httpcore/f;->c()[Lorg/apache/httpcore/u;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/apache/httpcore/entity/ContentType;->a(Ljava/lang/String;[Lorg/apache/httpcore/u;Z)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 208
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;
    .locals 1

    const/4 v0, 0x0

    .line 239
    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 255
    invoke-static {p1}, Lorg/apache/httpcore/util/g;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;
    .locals 2

    const-string v0, "MIME type"

    .line 226
    invoke-static {p0, v0}, Lorg/apache/httpcore/util/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-static {p0}, Lorg/apache/httpcore/entity/ContentType;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, Lorg/apache/httpcore/util/a;->a(ZLjava/lang/String;)V

    .line 228
    new-instance v0, Lorg/apache/httpcore/entity/ContentType;

    invoke-direct {v0, p0, p1}, Lorg/apache/httpcore/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static varargs create(Ljava/lang/String;[Lorg/apache/httpcore/u;)Lorg/apache/httpcore/entity/ContentType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const-string v0, "MIME type"

    .line 294
    invoke-static {p0, v0}, Lorg/apache/httpcore/util/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Lorg/apache/httpcore/entity/ContentType;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, Lorg/apache/httpcore/util/a;->a(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 296
    invoke-static {p0, p1, v0}, Lorg/apache/httpcore/entity/ContentType;->a(Ljava/lang/String;[Lorg/apache/httpcore/u;Z)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lorg/apache/httpcore/j;)Lorg/apache/httpcore/entity/ContentType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 340
    :cond_0
    invoke-interface {p0}, Lorg/apache/httpcore/j;->c()Lorg/apache/httpcore/e;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 342
    invoke-interface {p0}, Lorg/apache/httpcore/e;->getElements()[Lorg/apache/httpcore/f;

    move-result-object p0

    .line 343
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 344
    aget-object p0, p0, v0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/httpcore/entity/ContentType;->a(Lorg/apache/httpcore/f;Z)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getByMimeType(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 423
    :cond_0
    sget-object v0, Lorg/apache/httpcore/entity/ContentType;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/httpcore/entity/ContentType;

    return-object p0
.end method

.method public static getLenient(Lorg/apache/httpcore/j;)Lorg/apache/httpcore/entity/ContentType;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 364
    :cond_0
    invoke-interface {p0}, Lorg/apache/httpcore/j;->c()Lorg/apache/httpcore/e;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 367
    :try_start_0
    invoke-interface {p0}, Lorg/apache/httpcore/e;->getElements()[Lorg/apache/httpcore/f;

    move-result-object p0

    .line 368
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 369
    aget-object p0, p0, v1

    invoke-static {p0, v1}, Lorg/apache/httpcore/entity/ContentType;->a(Lorg/apache/httpcore/f;Z)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/httpcore/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_1
    return-object v0
.end method

.method public static getLenientOrDefault(Lorg/apache/httpcore/j;)Lorg/apache/httpcore/entity/ContentType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 406
    invoke-static {p0}, Lorg/apache/httpcore/entity/ContentType;->get(Lorg/apache/httpcore/j;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    sget-object p0, Lorg/apache/httpcore/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/httpcore/entity/ContentType;

    :goto_0
    return-object p0
.end method

.method public static getOrDefault(Lorg/apache/httpcore/j;)Lorg/apache/httpcore/entity/ContentType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 391
    invoke-static {p0}, Lorg/apache/httpcore/entity/ContentType;->get(Lorg/apache/httpcore/j;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    sget-object p0, Lorg/apache/httpcore/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/httpcore/entity/ContentType;

    :goto_0
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const-string v0, "Content type"

    .line 311
    invoke-static {p0, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    new-instance v0, Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    .line 313
    invoke-virtual {v0, p0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 314
    new-instance v1, Lorg/apache/httpcore/message/o;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/httpcore/message/o;-><init>(II)V

    .line 315
    sget-object v2, Lorg/apache/httpcore/message/d;->b:Lorg/apache/httpcore/message/d;

    invoke-virtual {v2, v0, v1}, Lorg/apache/httpcore/message/d;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)[Lorg/apache/httpcore/f;

    move-result-object v0

    .line 316
    array-length v1, v0

    if-lez v1, :cond_0

    .line 317
    aget-object p0, v0, v3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/httpcore/entity/ContentType;->a(Lorg/apache/httpcore/f;Z)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p0

    return-object p0

    .line 319
    :cond_0
    new-instance v0, Lorg/apache/httpcore/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/httpcore/entity/ContentType;->c:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/httpcore/entity/ContentType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "Parameter name"

    .line 177
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 178
    iget-object v0, p0, Lorg/apache/httpcore/entity/ContentType;->d:[Lorg/apache/httpcore/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/entity/ContentType;->d:[Lorg/apache/httpcore/u;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 182
    invoke-interface {v4}, Lorg/apache/httpcore/u;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    invoke-interface {v4}, Lorg/apache/httpcore/u;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 195
    new-instance v0, Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    .line 196
    iget-object v1, p0, Lorg/apache/httpcore/entity/ContentType;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lorg/apache/httpcore/entity/ContentType;->d:[Lorg/apache/httpcore/u;

    if-eqz v1, :cond_0

    const-string v1, "; "

    .line 198
    invoke-virtual {v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 199
    sget-object v1, Lorg/apache/httpcore/message/c;->b:Lorg/apache/httpcore/message/c;

    iget-object v2, p0, Lorg/apache/httpcore/entity/ContentType;->d:[Lorg/apache/httpcore/u;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/httpcore/message/c;->a(Lorg/apache/httpcore/util/CharArrayBuffer;[Lorg/apache/httpcore/u;Z)Lorg/apache/httpcore/util/CharArrayBuffer;

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Lorg/apache/httpcore/entity/ContentType;->c:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    const-string v1, "; charset="

    .line 201
    invoke-virtual {v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lorg/apache/httpcore/entity/ContentType;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 204
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCharset(Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;
    .locals 1

    .line 447
    invoke-virtual {p0}, Lorg/apache/httpcore/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p1

    return-object p1
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lorg/apache/httpcore/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p1

    return-object p1
.end method

.method public varargs withParameters([Lorg/apache/httpcore/u;)Lorg/apache/httpcore/entity/ContentType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 459
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 462
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 463
    iget-object v1, p0, Lorg/apache/httpcore/entity/ContentType;->d:[Lorg/apache/httpcore/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lorg/apache/httpcore/entity/ContentType;->d:[Lorg/apache/httpcore/u;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 465
    invoke-interface {v5}, Lorg/apache/httpcore/u;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/httpcore/u;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 468
    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 469
    invoke-interface {v3}, Lorg/apache/httpcore/u;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/httpcore/u;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 471
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    iget-object v1, p0, Lorg/apache/httpcore/entity/ContentType;->c:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_3

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 473
    new-instance v1, Lorg/apache/httpcore/message/BasicNameValuePair;

    const-string v3, "charset"

    iget-object v4, p0, Lorg/apache/httpcore/entity/ContentType;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/httpcore/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 476
    new-instance v3, Lorg/apache/httpcore/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lorg/apache/httpcore/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 478
    :cond_4
    invoke-virtual {p0}, Lorg/apache/httpcore/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/httpcore/u;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/httpcore/u;

    invoke-static {v0, p1, v2}, Lorg/apache/httpcore/entity/ContentType;->a(Ljava/lang/String;[Lorg/apache/httpcore/u;Z)Lorg/apache/httpcore/entity/ContentType;

    move-result-object p1

    return-object p1
.end method
