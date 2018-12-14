.class public Lorg/eclipse/jetty/http/EncodedHttpURI;
.super Lorg/eclipse/jetty/http/HttpURI;
.source "EncodedHttpURI.java"


# instance fields
.field private final _encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpURI;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 4

    .line 153
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    return-void
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 162
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 166
    iget-object p2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 4

    .line 67
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_authority:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_authority:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 4

    .line 115
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_end:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 4

    .line 99
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_param:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_param:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/URIUtil;->decodePath([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 4

    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_end:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    .line 75
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_host:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_port:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_host:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_port:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_host:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 4

    .line 123
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_param:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_param:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_param:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .line 91
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_param:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_param:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 4

    .line 107
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 4

    .line 83
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_port:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_port:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_path:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_port:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v0

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    .line 131
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 6

    .line 44
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_authority:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x70

    const/16 v3, 0x68

    const/16 v4, 0x74

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v5, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    aget-byte v1, v1, v5

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v5, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v1, v5

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v5, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v1, v1, v5

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v5, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v1, v1, v5

    if-ne v1, v2, :cond_1

    const-string v0, "http"

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    const/16 v1, 0x73

    if-ne v0, v1, :cond_2

    const-string v0, "https"

    return-object v0

    .line 61
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_authority:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasQuery()Z
    .locals 2

    .line 139
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_fragment:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_query:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_rawString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_end:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_scheme:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_rawString:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->_rawString:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/jetty/util/Utf8StringBuffer;)V
    .locals 1

    .line 180
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/EncodedHttpURI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
